#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <memory>
#include <stdexcept>
#include <vector>

#include <opencv2/opencv.hpp>

#include <cv_bridge/cv_bridge.h>
#include <geometry_msgs/msg/twist.hpp>
#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/image_encodings.hpp>
#include <sensor_msgs/msg/image.hpp>


class F1Controller : public rclcpp::Node
{
public:
    F1Controller()
        : Node("f1_neural_controller"),
          socket_fd_(-1),
          frame_count_(0),
          start_time_(std::chrono::steady_clock::now())
    {
        create_udp_socket();

        cmd_publisher_ =
            create_publisher<geometry_msgs::msg::Twist>(
                "/cmd_vel",
                10
            );

        /*
         * El publicador de la cámara es RELIABLE.
         * Se utiliza una cola de una sola imagen para procesar siempre
         * la imagen más reciente y evitar acumulaciones.
         */
        auto camera_qos =
            rclcpp::QoS(rclcpp::KeepLast(1)).reliable();

        image_subscription_ =
            create_subscription<sensor_msgs::msg::Image>(
                "/cam_f1_left/image_raw",
                camera_qos,
                std::bind(
                    &F1Controller::image_callback,
                    this,
                    std::placeholders::_1
                )
            );

        RCLCPP_INFO(
            get_logger(),
            "Nodo iniciado. Cámara -> FINN UDP -> /cmd_vel"
        );
    }

    ~F1Controller() override
    {
        if (socket_fd_ >= 0) {
            close(socket_fd_);
        }
    }

private:
    void create_udp_socket()
    {
        socket_fd_ = socket(AF_INET, SOCK_DGRAM, 0);

        if (socket_fd_ < 0) {
            throw std::runtime_error(
                "No se pudo crear el socket UDP"
            );
        }

        std::memset(
            &server_address_,
            0,
            sizeof(server_address_)
        );

        server_address_.sin_family = AF_INET;
        server_address_.sin_port = htons(5005);

        if (
            inet_pton(
                AF_INET,
                "127.0.0.1",
                &server_address_.sin_addr
            ) != 1
        ) {
            close(socket_fd_);
            socket_fd_ = -1;

            throw std::runtime_error(
                "Dirección IP del servidor no válida"
            );
        }

        /*
         * El nodo espera como máximo 100 ms la respuesta de Verilator.
         * En las pruebas la inferencia tarda aproximadamente 24 ms.
         */
        timeval timeout {};
        timeout.tv_sec = 0;
        timeout.tv_usec = 100000;

        if (
            setsockopt(
                socket_fd_,
                SOL_SOCKET,
                SO_RCVTIMEO,
                &timeout,
                sizeof(timeout)
            ) < 0
        ) {
            close(socket_fd_);
            socket_fd_ = -1;

            throw std::runtime_error(
                "No se pudo configurar el timeout UDP"
            );
        }
    }

    void image_callback(
        const sensor_msgs::msg::Image::ConstSharedPtr msg
    )
    {
        try {
            /*
             * Convierte el mensaje ROS a una imagen OpenCV BGR.
             */
            const auto cv_ptr = cv_bridge::toCvShare(
                msg,
                sensor_msgs::image_encodings::BGR8
            );

            /*
             * La red FINN espera imágenes de 16 x 12 píxeles.
             */
            cv::Mat resized;

            cv::resize(
                cv_ptr->image,
                resized,
                cv::Size(16, 12),
                0.0,
                0.0,
                cv::INTER_LINEAR
            );

            const std::vector<std::uint8_t> input_bytes =
                image_to_rgb_planes(resized);

            float v = 0.0f;
            float w = 0.0f;

            if (!run_remote_inference(input_bytes, v, w)) {
                RCLCPP_WARN_THROTTLE(
                    get_logger(),
                    *get_clock(),
                    2000,
                    "No se recibió una respuesta válida de FINN"
                );

                publish_velocity(0.0f, 0.0f);
                return;
            }

            if (!std::isfinite(v) || !std::isfinite(w)) {
                RCLCPP_ERROR(
                    get_logger(),
                    "FINN devolvió valores no válidos"
                );

                publish_velocity(0.0f, 0.0f);
                return;
            }

            publish_velocity(v, w);

            frame_count_++;

            if (frame_count_ % 20 == 0) {
                print_status(v, w);
            }
        }
        catch (const std::exception& error) {
            RCLCPP_ERROR(
                get_logger(),
                "Error procesando la imagen: %s",
                error.what()
            );

            publish_velocity(0.0f, 0.0f);
        }
    }

    std::vector<std::uint8_t> image_to_rgb_planes(
        const cv::Mat& image_bgr
    )
    {
        constexpr int width = 16;
        constexpr int height = 12;
        constexpr int pixels = width * height;

        if (
            image_bgr.cols != width ||
            image_bgr.rows != height ||
            image_bgr.type() != CV_8UC3
        ) {
            throw std::runtime_error(
                "La imagen no tiene formato 16x12 BGR8"
            );
        }

        std::vector<std::uint8_t> bytes(3 * pixels);

        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                const cv::Vec3b pixel =
                    image_bgr.at<cv::Vec3b>(y, x);

                const std::uint8_t b = pixel[0];
                const std::uint8_t g = pixel[1];
                const std::uint8_t r = pixel[2];

                const int index = y * width + x;

                /*
                 * Formato RGB planar esperado por FINN:
                 *
                 * bytes 0-191:     canal R
                 * bytes 192-383:   canal G
                 * bytes 384-575:   canal B
                 */
                bytes[index] = r;
                bytes[pixels + index] = g;
                bytes[2 * pixels + index] = b;
            }
        }

        return bytes;
    }

    bool run_remote_inference(
        const std::vector<std::uint8_t>& input_bytes,
        float& v,
        float& w
    )
    {
        if (input_bytes.size() != 576) {
            return false;
        }

        const ssize_t sent_bytes = sendto(
            socket_fd_,
            input_bytes.data(),
            input_bytes.size(),
            0,
            reinterpret_cast<sockaddr*>(&server_address_),
            sizeof(server_address_)
        );

        if (sent_bytes != 576) {
            return false;
        }

        float response[2] = {0.0f, 0.0f};

        sockaddr_in response_address {};
        socklen_t response_address_length =
            sizeof(response_address);

        const ssize_t received_bytes = recvfrom(
            socket_fd_,
            response,
            sizeof(response),
            0,
            reinterpret_cast<sockaddr*>(&response_address),
            &response_address_length
        );

        if (
            received_bytes !=
            static_cast<ssize_t>(sizeof(response))
        ) {
            return false;
        }

        v = response[0];
        w = response[1];

        return true;
    }

    void publish_velocity(float v, float w)
    {
        geometry_msgs::msg::Twist command;

        command.linear.x = static_cast<double>(v);
        command.angular.z = static_cast<double>(w);

        cmd_publisher_->publish(command);
    }

    void print_status(float v, float w)
    {
        const auto current_time =
            std::chrono::steady_clock::now();

        const double elapsed =
            std::chrono::duration<double>(
                current_time - start_time_
            ).count();

        const double frequency =
            elapsed > 0.0
                ? static_cast<double>(frame_count_) / elapsed
                : 0.0;

        RCLCPP_INFO(
            get_logger(),
            "Frames=%zu | frecuencia=%.2f Hz | v=%.4f | w=%.4f",
            frame_count_,
            frequency,
            v,
            w
        );
    }

    int socket_fd_;
    sockaddr_in server_address_ {};

    std::size_t frame_count_;
    std::chrono::steady_clock::time_point start_time_;

    rclcpp::Subscription<
        sensor_msgs::msg::Image
    >::SharedPtr image_subscription_;

    rclcpp::Publisher<
        geometry_msgs::msg::Twist
    >::SharedPtr cmd_publisher_;
};


int main(int argc, char** argv)
{
    rclcpp::init(argc, argv);

    auto node = std::make_shared<F1Controller>();

    rclcpp::spin(node);

    rclcpp::shutdown();

    return 0;
}

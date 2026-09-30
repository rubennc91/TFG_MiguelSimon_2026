#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <memory>
#include <sstream>
#include <stdexcept>
#include <string>
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
          received_frames_(0),
          processed_frames_(0),
          total_inference_ms_(0.0),
          start_time_(std::chrono::steady_clock::now()),
          last_processed_time_(start_time_)
    {
        /*
         * Parámetros modificables desde la línea de comandos.
         *
         * linear_factor:
         *   Multiplica la velocidad lineal obtenida por FINN.
         *
         * angular_factor:
         *   Reduce o aumenta la velocidad angular.
         *
         * process_every_n_frames:
         *   1 -> procesa todas las imágenes, aproximadamente 20 Hz.
         *   2 -> procesa una de cada dos, aproximadamente 10 Hz.
         *   4 -> procesa una de cada cuatro, aproximadamente 5 Hz.
         */
        linear_factor_ =
            declare_parameter<double>("linear_factor", 1.0);

        angular_factor_ =
            declare_parameter<double>("angular_factor", 0.30);

        process_every_n_frames_ =
            declare_parameter<int>("process_every_n_frames", 1);

        show_gui_ =
            declare_parameter<bool>("show_gui", true);

        max_linear_speed_ =
            declare_parameter<double>("max_linear_speed", 13.0);

        max_angular_speed_ =
            declare_parameter<double>("max_angular_speed", 3.14159);

        csv_path_ =
            declare_parameter<std::string>(
                "csv_path",
                "/f1_ws/results/finn_metrics.csv"
            );

        if (process_every_n_frames_ < 1) {
            process_every_n_frames_ = 1;
        }

        create_udp_socket();
        create_csv_file();

        cmd_publisher_ =
            create_publisher<geometry_msgs::msg::Twist>(
                "/cmd_vel",
                10
            );

        /*
         * El publicador de la cámara trabaja como RELIABLE.
         * La cola tiene profundidad 1 para utilizar siempre la imagen
         * más reciente y evitar acumular imágenes antiguas.
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
            "Nodo iniciado: cámara -> FINN/Verilator -> /cmd_vel"
        );

        RCLCPP_INFO(
            get_logger(),
            "Factores: lineal=%.2f angular=%.2f | procesa 1 de cada %d imágenes",
            linear_factor_,
            angular_factor_,
            process_every_n_frames_
        );

        RCLCPP_INFO(
            get_logger(),
            "Resultados CSV: %s",
            csv_path_.c_str()
        );
    }

    ~F1Controller() override
    {
        if (socket_fd_ >= 0) {
            close(socket_fd_);
        }

        if (csv_file_.is_open()) {
            csv_file_.close();
        }

        if (show_gui_) {
            cv::destroyAllWindows();
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
                "Dirección IP de Verilator no válida"
            );
        }

        /*
         * Se esperan como máximo 200 ms.
         * Las pruebas realizadas daban aproximadamente 24 ms.
         */
        timeval timeout {};
        timeout.tv_sec = 0;
        timeout.tv_usec = 200000;

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

    void create_csv_file()
    {
        const std::filesystem::path path(csv_path_);

        if (path.has_parent_path()) {
            std::filesystem::create_directories(
                path.parent_path()
            );
        }

        csv_file_.open(
            csv_path_,
            std::ios::out | std::ios::trunc
        );

        if (!csv_file_.is_open()) {
            throw std::runtime_error(
                "No se pudo crear el archivo CSV"
            );
        }

        csv_file_
            << "frame,"
            << "elapsed_s,"
            << "loop_hz,"
            << "inference_ms,"
            << "average_inference_ms,"
            << "finn_v,"
            << "finn_w,"
            << "sent_v,"
            << "sent_w,"
            << "linear_factor,"
            << "angular_factor,"
            << "process_every_n_frames"
            << '\n';

        csv_file_.flush();
    }

    void image_callback(
        const sensor_msgs::msg::Image::ConstSharedPtr msg
    )
    {
        received_frames_++;

        /*
         * Permite estudiar el comportamiento del control a distintas
         * frecuencias sin cambiar la frecuencia de la cámara.
         */
        if (
            received_frames_ %
            static_cast<std::size_t>(process_every_n_frames_) != 0
        ) {
            return;
        }

        const auto iteration_start =
            std::chrono::steady_clock::now();

        try {
            /*
             * Conversión del mensaje ROS a BGR8 para OpenCV.
             */
            const auto cv_ptr = cv_bridge::toCvShare(
                msg,
                sensor_msgs::image_encodings::BGR8
            );

            /*
             * Entrada esperada por la red: 16 x 12 píxeles.
             */
            cv::Mat resized_16x12;

            cv::resize(
                cv_ptr->image,
                resized_16x12,
                cv::Size(16, 12),
                0.0,
                0.0,
                cv::INTER_LINEAR
            );

            const std::vector<std::uint8_t> input_bytes =
                image_to_rgb_planes(resized_16x12);

            float finn_v = 0.0f;
            float finn_w = 0.0f;

            /*
             * Medición del tiempo desde que se envían los 576 bytes
             * hasta que se reciben v y w.
             *
             * Incluye UDP local + simulación Verilator.
             */
            const auto inference_start =
                std::chrono::steady_clock::now();

            const bool inference_ok =
                run_remote_inference(
                    input_bytes,
                    finn_v,
                    finn_w
                );

            const auto inference_end =
                std::chrono::steady_clock::now();

            const double inference_ms =
                std::chrono::duration<double, std::milli>(
                    inference_end - inference_start
                ).count();

            if (!inference_ok) {
                RCLCPP_WARN_THROTTLE(
                    get_logger(),
                    *get_clock(),
                    2000,
                    "No se recibió respuesta válida de Verilator"
                );

                publish_velocity(0.0, 0.0);
                return;
            }

            if (
                !std::isfinite(finn_v) ||
                !std::isfinite(finn_w)
            ) {
                RCLCPP_ERROR(
                    get_logger(),
                    "FINN devolvió valores no válidos"
                );

                publish_velocity(0.0, 0.0);
                return;
            }

            /*
             * Ajustes solicitados:
             *
             * sent_v = salida FINN multiplicada por un factor lineal.
             * sent_w = salida FINN multiplicada por un factor angular.
             */
            const double sent_v = std::clamp(
                static_cast<double>(finn_v) * linear_factor_,
                -max_linear_speed_,
                max_linear_speed_
            );

            const double sent_w = std::clamp(
                static_cast<double>(finn_w) * angular_factor_,
                -max_angular_speed_,
                max_angular_speed_
            );

            publish_velocity(sent_v, sent_w);

            processed_frames_++;
            total_inference_ms_ += inference_ms;

            const auto now =
                std::chrono::steady_clock::now();

            const double elapsed_s =
                std::chrono::duration<double>(
                    now - start_time_
                ).count();

            const double loop_period_s =
                std::chrono::duration<double>(
                    iteration_start - last_processed_time_
                ).count();

            last_processed_time_ = iteration_start;

            const double loop_hz =
                loop_period_s > 0.0
                    ? 1.0 / loop_period_s
                    : 0.0;

            const double average_loop_hz =
                elapsed_s > 0.0
                    ? static_cast<double>(processed_frames_) /
                      elapsed_s
                    : 0.0;

            const double average_inference_ms =
                processed_frames_ > 0
                    ? total_inference_ms_ /
                      static_cast<double>(processed_frames_)
                    : 0.0;

            write_csv_row(
                elapsed_s,
                loop_hz,
                inference_ms,
                average_inference_ms,
                finn_v,
                finn_w,
                sent_v,
                sent_w
            );

            if (show_gui_) {
                show_interface(
                    cv_ptr->image,
                    resized_16x12,
                    finn_v,
                    finn_w,
                    sent_v,
                    sent_w,
                    inference_ms,
                    average_inference_ms,
                    loop_hz,
                    average_loop_hz
                );
            }

            if (processed_frames_ % 20 == 0) {
                RCLCPP_INFO(
                    get_logger(),
                    "Frame=%zu | lazo=%.2f Hz | "
                    "FINN=%.2f ms (media %.2f) | "
                    "v=%.3f -> %.3f | w=%.3f -> %.3f",
                    processed_frames_,
                    average_loop_hz,
                    inference_ms,
                    average_inference_ms,
                    finn_v,
                    sent_v,
                    finn_w,
                    sent_w
                );
            }
        }
        catch (const std::exception& error) {
            RCLCPP_ERROR(
                get_logger(),
                "Error procesando imagen: %s",
                error.what()
            );

            publish_velocity(0.0, 0.0);
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
                 * Formato RGB planar:
                 *
                 * 0-191:   R
                 * 192-383: G
                 * 384-575: B
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

    void publish_velocity(double v, double w)
    {
        geometry_msgs::msg::Twist command;

        command.linear.x = v;
        command.angular.z = w;

        cmd_publisher_->publish(command);
    }

    void write_csv_row(
        double elapsed_s,
        double loop_hz,
        double inference_ms,
        double average_inference_ms,
        float finn_v,
        float finn_w,
        double sent_v,
        double sent_w
    )
    {
        csv_file_
            << processed_frames_ << ','
            << std::fixed << std::setprecision(6)
            << elapsed_s << ','
            << loop_hz << ','
            << inference_ms << ','
            << average_inference_ms << ','
            << finn_v << ','
            << finn_w << ','
            << sent_v << ','
            << sent_w << ','
            << linear_factor_ << ','
            << angular_factor_ << ','
            << process_every_n_frames_
            << '\n';

        csv_file_.flush();
    }

    void put_text(
        cv::Mat& image,
        const std::string& text,
        int y,
        double scale = 0.60
    )
    {
        cv::putText(
            image,
            text,
            cv::Point(15, y),
            cv::FONT_HERSHEY_SIMPLEX,
            scale,
            cv::Scalar(0, 255, 0),
            1,
            cv::LINE_AA
        );
    }

    std::string format_value(
        const std::string& name,
        double value,
        int precision,
        const std::string& unit = ""
    )
    {
        std::ostringstream stream;

        stream
            << name
            << std::fixed
            << std::setprecision(precision)
            << value
            << unit;

        return stream.str();
    }

    void show_interface(
        const cv::Mat& original_bgr,
        const cv::Mat& resized_16x12,
        float finn_v,
        float finn_w,
        double sent_v,
        double sent_w,
        double inference_ms,
        double average_inference_ms,
        double loop_hz,
        double average_loop_hz
    )
    {
        cv::Mat camera_image;

        cv::resize(
            original_bgr,
            camera_image,
            cv::Size(640, 480)
        );

        cv::Mat information_panel(
            480,
            360,
            CV_8UC3,
            cv::Scalar(25, 25, 25)
        );

        /*
         * La entrada 16 x 12 se amplía sin interpolación para mostrar
         * claramente los píxeles que recibe FINN.
         */
        cv::Mat network_input_large;

        cv::resize(
            resized_16x12,
            network_input_large,
            cv::Size(320, 240),
            0.0,
            0.0,
            cv::INTER_NEAREST
        );

        network_input_large.copyTo(
            information_panel(
                cv::Rect(20, 20, 320, 240)
            )
        );

        put_text(
            information_panel,
            "Entrada FINN: 16 x 12 RGB",
            282,
            0.55
        );

        put_text(
            information_panel,
            "Frame: " +
            std::to_string(processed_frames_),
            310
        );

        put_text(
            information_panel,
            format_value(
                "Lazo instantaneo: ",
                loop_hz,
                2,
                " Hz"
            ),
            334
        );

        put_text(
            information_panel,
            format_value(
                "Lazo medio: ",
                average_loop_hz,
                2,
                " Hz"
            ),
            358
        );

        put_text(
            information_panel,
            format_value(
                "Inferencia: ",
                inference_ms,
                2,
                " ms"
            ),
            382
        );

        put_text(
            information_panel,
            format_value(
                "Inferencia media: ",
                average_inference_ms,
                2,
                " ms"
            ),
            406
        );

        put_text(
            information_panel,
            format_value("FINN v: ", finn_v, 3) +
            format_value("  w: ", finn_w, 3),
            430,
            0.55
        );

        put_text(
            information_panel,
            format_value("Enviado v: ", sent_v, 3) +
            format_value("  w: ", sent_w, 3),
            454,
            0.55
        );

        cv::Mat display;

        cv::hconcat(
            camera_image,
            information_panel,
            display
        );

        cv::imshow(
            "TFG - Control neuronal FINN/Verilator",
            display
        );

        const int key = cv::waitKey(1);

        /*
         * Pulsando la tecla S se guarda una captura de la interfaz.
         */
        if (key == 's' || key == 'S') {
            const std::string screenshot_path =
                "/f1_ws/results/captura_interfaz.png";

            cv::imwrite(screenshot_path, display);

            RCLCPP_INFO(
                get_logger(),
                "Captura guardada en %s",
                screenshot_path.c_str()
            );
        }
    }

    int socket_fd_;
    sockaddr_in server_address_ {};

    std::size_t received_frames_;
    std::size_t processed_frames_;

    double total_inference_ms_;

    double linear_factor_;
    double angular_factor_;

    int process_every_n_frames_;
    bool show_gui_;

    double max_linear_speed_;
    double max_angular_speed_;

    std::string csv_path_;
    std::ofstream csv_file_;

    std::chrono::steady_clock::time_point start_time_;
    std::chrono::steady_clock::time_point last_processed_time_;

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

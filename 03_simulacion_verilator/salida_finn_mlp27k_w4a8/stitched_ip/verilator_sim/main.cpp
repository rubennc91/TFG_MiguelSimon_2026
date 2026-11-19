#include <verilated.h>
#include "Vfinn_design_wrapper.h"

#include <arpa/inet.h>
#include <csignal>
#include <cstdint>
#include <cstring>
#include <iomanip>
#include <iostream>
#include <sys/socket.h>
#include <unistd.h>
#include <vector>

vluint64_t sim_time = 0;

constexpr int UDP_PORT = 5005;
constexpr int BYTES_PER_IMAGE = 576;
constexpr int MAX_CYCLES = 500000;

constexpr float PI_VALUE = 3.14159265358979323846f;

constexpr float FINN_MUL_FINAL = 0.00016658f;
constexpr float FINN_ADD_FINAL = 0.02115575f;

volatile std::sig_atomic_t keep_running = 1;


void signal_handler(int)
{
    keep_running = 0;
}


void tick(Vfinn_design_wrapper* top)
{
    top->ap_clk = 0;
    top->eval();
    sim_time++;

    top->ap_clk = 1;
    top->eval();
    sim_time++;
}


int32_t sign_extend_24(uint32_t value)
{
    value &= 0x00FFFFFF;

    if (value & 0x00800000) {
        return static_cast<int32_t>(value | 0xFF000000);
    }

    return static_cast<int32_t>(value);
}


void reset_design(Vfinn_design_wrapper* top)
{
    top->ap_rst_n = 0;

    top->s_axis_0_tvalid = 0;
    top->s_axis_0_tdata = 0;

    top->m_axis_0_tready = 1;

    for (int i = 0; i < 20; i++) {
        tick(top);
    }

    top->ap_rst_n = 1;

    for (int i = 0; i < 20; i++) {
        tick(top);
    }
}

//1. Enviar los 576 bytes
//2. Esperar las dos salidas
//3. Convertirlas a v y w reales
bool run_inference(
    Vfinn_design_wrapper* top,
    const std::vector<uint8_t>& input_bytes,
    float& finn_v,
    float& finn_w
)
{
    if (input_bytes.size() != BYTES_PER_IMAGE) {
        std::cerr
            << "ERROR: se esperaban 576 bytes y se recibieron "
            << input_bytes.size()
            << std::endl;

        return false;
    }

    int bytes_sent = 0;
    int bytes_accepted = 0;
    int cycles_send = 0;

    uint32_t out_words[2] = {0, 0};
    int out_count = 0;

    top->m_axis_0_tready = 1;

    /*
     * Envío de los 576 bytes por AXI-Stream.
     *
     * El wrapper utilizado tiene una entrada de 8 bits, por lo que se
     * transmite un byte en cada transferencia válida.
     */
    while (
        bytes_sent < BYTES_PER_IMAGE &&
        cycles_send < MAX_CYCLES
    ) {
        const uint8_t input_byte = input_bytes[bytes_sent];

        top->s_axis_0_tdata = input_byte;
        top->s_axis_0_tvalid = 1;

        /*
         * Se comprueba si existe una salida antes de avanzar el reloj.
         */
        if (
            top->m_axis_0_tvalid &&
            top->m_axis_0_tready
        ) {
            if (out_count < 2) {
                out_words[out_count] =
                    static_cast<uint32_t>(
                        top->m_axis_0_tdata & 0xFFFFFF
                    );

                out_count++;
            }
        }

        /*
         * Guardamos el estado del handshake de entrada correspondiente
         * al ciclo actual.
         */
        const bool input_handshake =
            top->s_axis_0_tvalid &&
            top->s_axis_0_tready;

        tick(top);
        cycles_send++;

        if (input_handshake) {
            bytes_sent++;
            bytes_accepted++;
        }
    }

    top->s_axis_0_tvalid = 0;
    top->s_axis_0_tdata = 0;

    if (bytes_accepted != BYTES_PER_IMAGE) {
        std::cerr
            << "ERROR: FINN solo aceptó "
            << bytes_accepted
            << " de los 576 bytes"
            << std::endl;

        return false;
    }

    /*
     * Espera de las salidas que todavía no hayan aparecido durante
     * el envío de la imagen.
     */
    int drain_cycles = 0;

    while (
        out_count < 2 &&
        drain_cycles < MAX_CYCLES
    ) {
        top->m_axis_0_tready = 1;

        if (
            top->m_axis_0_tvalid &&
            top->m_axis_0_tready
        ) {
            out_words[out_count] =
                static_cast<uint32_t>(
                    top->m_axis_0_tdata & 0xFFFFFF
                );

            out_count++;
        }

        tick(top);
        drain_cycles++;
    }

    if (out_count < 2) {
        std::cerr
            << "ERROR: solo se recibieron "
            << out_count
            << " de las 2 salidas de FINN"
            << std::endl;

        return false;
    }

    const int32_t raw_v_s24 =
        sign_extend_24(out_words[0]);

    const int32_t raw_w_s24 =
        sign_extend_24(out_words[1]);

    /*
     * Conversión equivalente al modelo ONNX:
     *
     * global_out = raw * 0.00016658 + 0.02115575
     */
    const float v_norm =
        raw_v_s24 * FINN_MUL_FINAL + FINN_ADD_FINAL;

    const float w_norm =
        raw_w_s24 * FINN_MUL_FINAL + FINN_ADD_FINAL;

    /*
     * Desnormalización final.
     *
     * v: [0,1] -> [-0.6,13]
     * w: [0,1] -> [-pi,pi]
     */
    finn_v =
        -0.6f +
        v_norm * (13.0f - (-0.6f));

    finn_w =
        -PI_VALUE +
        w_norm * (2.0f * PI_VALUE);

    std::cout
        << std::fixed
        << std::setprecision(5)
        << "raw_v=" << raw_v_s24
        << " raw_w=" << raw_w_s24
        << " | v_norm=" << v_norm
        << " w_norm=" << w_norm
        << " | FINN v=" << finn_v
        << " w=" << finn_w
        << " | ciclos_envio=" << cycles_send
        << " ciclos_espera=" << drain_cycles
        << std::endl;

    return true;
}


int create_udp_socket()  //crear socket
{
    const int socket_fd = socket(
        AF_INET,
        SOCK_DGRAM,
        0
    );

    if (socket_fd < 0) {
        perror("socket");
        return -1;
    }

    sockaddr_in server_address {};  // dirección del puerto
    server_address.sin_family = AF_INET;
    server_address.sin_addr.s_addr = htonl(INADDR_ANY); //cualquier direeccion de este ordenador
    server_address.sin_port = htons(UDP_PORT); //5005

    if (
        bind(    //vinvula el socket todas las IP locales + puerto UDP 5005
            socket_fd,
            reinterpret_cast<sockaddr*>(&server_address),
            sizeof(server_address)
        ) < 0
    ) {
        perror("bind");
        close(socket_fd);
        return -1;
    }

    return socket_fd;
}


int main(int argc, char** argv)
{
    std::signal(SIGINT, signal_handler);
    std::signal(SIGTERM, signal_handler);

    Verilated::commandArgs(argc, argv);

    auto* top = new Vfinn_design_wrapper;

    reset_design(top);

    const int socket_fd = create_udp_socket();

    if (socket_fd < 0) {
        top->final();
        delete top;
        return 1;
    }

    std::cout
        << "Servidor FINN/Verilator escuchando por UDP en el puerto "
        << UDP_PORT
        << std::endl;

    std::cout
        << "Esperando imágenes de " //se queda aqui bloqueado hasta que el nodo ROS manda una imagen
        << BYTES_PER_IMAGE
        << " bytes..."
        << std::endl;

    std::vector<uint8_t> input_bytes(BYTES_PER_IMAGE);

    std::size_t frame_count = 0;

    while (keep_running && !Verilated::gotFinish()) {
        sockaddr_in client_address {};
        socklen_t client_address_length =
            sizeof(client_address);

        const ssize_t received_bytes = recvfrom(
            socket_fd,          //Indica qué socket se utiliza. Es el que está asociado al puerto 5005.
            input_bytes.data(), //Es la memoria donde se copiará la imagen recibida.
            input_bytes.size(), //Indica el máximo que se puede copiar 576 bytes
            0,
            reinterpret_cast<sockaddr*>(&client_address), //guarda aquí la dirección del cliente.
            &client_address_length
        );

        if (received_bytes < 0) {
            if (keep_running) {
                perror("recvfrom");
            }

            continue;
        }

        if (received_bytes != BYTES_PER_IMAGE) {
            std::cerr
                << "ERROR: datagrama incorrecto. Recibidos "
                << received_bytes
                << " bytes; se esperaban "
                << BYTES_PER_IMAGE
                << std::endl;

            continue;
        }

        float finn_v = 0.0f;
        float finn_w = 0.0f;

        const bool inference_ok = run_inference(
            top,
            input_bytes,
            finn_v,
            finn_w
        );

        /*
         * Respuesta:
         *
         * response[0] = velocidad lineal v
         * response[1] = velocidad angular w
         *
         * Ambos valores son float de 32 bits.
         */
        float response[2];

        if (inference_ok) {
            response[0] = finn_v;
            response[1] = finn_w;
        } else {
            /*
             * Si la inferencia falla, se ordena detener el coche.
             */
            response[0] = 0.0f;
            response[1] = 0.0f;
        }

        const ssize_t sent_bytes = sendto(
            socket_fd,
            response,
            sizeof(response),
            0,
            reinterpret_cast<sockaddr*>(&client_address),
            client_address_length
        );

        if (sent_bytes != static_cast<ssize_t>(sizeof(response))) {
            perror("sendto");
        }

        frame_count++;

        std::cout
            << "Frame procesado: "
            << frame_count
            << " | bytes recibidos="
            << received_bytes
            << " | respuesta="
            << response[0]
            << ", "
            << response[1]
            << std::endl;
    }

    std::cout << "\nCerrando servidor FINN..." << std::endl;

    close(socket_fd);

    top->final();
    delete top;

    return 0;
}

#include <verilated.h>
#include "Vfinn_design_wrapper.h"

#include <opencv2/opencv.hpp>

#include <iostream>
#include <vector>
#include <string>
#include <cstdint>
#include <cmath>

// Tiempo global de simulacion
vluint64_t sim_time = 0;

// OJO:
// En algunos wrappers FINN/Verilator el reloj aparece como:
// finn_design_wrapper__02Eap_clk
// Si al compilar falla por este nombre, habra que mirar el .h generado.
void tick(Vfinn_design_wrapper* top)
{
    top->finn_design_wrapper__02Eap_clk = 0;
    top->eval();
    sim_time++;

    top->finn_design_wrapper__02Eap_clk = 1;
    top->eval();
    sim_time++;
}

std::vector<uint8_t> image_to_rgb_planes(const cv::Mat& img)
{
    const int H = 16;
    const int W = 12;
    const int NPIX = H * W;

    cv::Mat resized;
    cv::resize(img, resized, cv::Size(W, H));

    std::vector<uint8_t> input(3 * NPIX);

    for (int y = 0; y < H; y++) {
        for (int x = 0; x < W; x++) {

            // OpenCV lee en BGR
            cv::Vec3b bgr = resized.at<cv::Vec3b>(y, x);

            uint8_t b = bgr[0];
            uint8_t g = bgr[1];
            uint8_t r = bgr[2];

            int idx = y * W + x;

            // Orden esperado por la red:
            // RRR...RRR GGG...GGG BBB...BBB
            input[idx] = r;
            input[NPIX + idx] = g;
            input[2 * NPIX + idx] = b;
        }
    }

    return input;
}

void print_input_check(const std::vector<uint8_t>& input)
{
    std::cout << "Primeros 20 bytes de entrada:" << std::endl;
    for (int i = 0; i < 20; i++) {
        std::cout << static_cast<int>(input[i]) << " ";
    }
    std::cout << std::endl;

    std::cout << "Cambio R-G, posiciones 185 a 199:" << std::endl;
    for (int i = 185; i < 200; i++) {
        std::cout << static_cast<int>(input[i]) << " ";
    }
    std::cout << std::endl;

    std::cout << "Cambio G-B, posiciones 377 a 391:" << std::endl;
    for (int i = 377; i < 392; i++) {
        std::cout << static_cast<int>(input[i]) << " ";
    }
    std::cout << std::endl;
}

void reset_design(Vfinn_design_wrapper* top)
{
    // Reset activo a nivel bajo
    top->finn_design_wrapper__02Eap_rst_n = 0;

    top->s_axis_0_tvalid = 0;
    top->s_axis_0_tdata = 0;
    top->m_axis_0_tready = 0;

    for (int i = 0; i < 20; i++) {
        tick(top);
    }

    top->finn_design_wrapper__02Eap_rst_n = 1;

    for (int i = 0; i < 20; i++) {
        tick(top);
    }
}

void send_image_axi(Vfinn_design_wrapper* top, const std::vector<uint8_t>& input)
{
    std::cout << "Enviando imagen por AXI-Stream..." << std::endl;

    for (size_t i = 0; i < input.size(); i++) {

        top->s_axis_0_tdata = input[i];
        top->s_axis_0_tvalid = 1;

        // Esperar hasta que el acelerador acepte el dato
        int guard = 0;
        while (!top->s_axis_0_tready) {
            tick(top);
            guard++;

            if (guard > 1000000) {
                std::cerr << "ERROR: timeout esperando s_axis_0_tready en byte "
                          << i << std::endl;
                return;
            }
        }

        // Transferencia realizada en este ciclo
        tick(top);

        if (i < 10) {
            std::cout << "Byte enviado " << i
                      << " = " << static_cast<int>(input[i])
                      << std::endl;
        }
    }

    top->s_axis_0_tvalid = 0;
    top->s_axis_0_tdata = 0;

    std::cout << "Imagen enviada. Bytes totales = "
              << input.size() << std::endl;
}

std::vector<int> read_output_axi(Vfinn_design_wrapper* top)
{
    std::vector<int> output_bytes;

    top->m_axis_0_tready = 1;

    std::cout << "Esperando salida AXI-Stream..." << std::endl;

    for (int wait = 0; wait < 2000000; wait++) {
        tick(top);

        if (top->m_axis_0_tvalid) {
            int data = static_cast<int>(top->m_axis_0_tdata);
            int last = static_cast<int>(top->m_axis_0_tlast);

            output_bytes.push_back(data);

            std::cout << "Salida AXI: ciclo = "
                      << sim_time
                      << " data = "
                      << data
                      << " tlast = "
                      << last
                      << std::endl;

            if (last) {
                break;
            }
        }
    }

    top->m_axis_0_tready = 0;

    std::cout << "Numero de bytes recibidos: "
              << output_bytes.size()
              << std::endl;

    std::cout << "Bytes recibidos: ";
    for (int b : output_bytes) {
        std::cout << b << " ";
    }
    std::cout << std::endl;

    return output_bytes;
}

int main(int argc, char** argv)
{
    Verilated::commandArgs(argc, argv);

    const std::string img_path =
        "/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/output_final_miguel/Dataset_JdeRobot/DATA_12_16/counter_montmelo_holonomic/124.png";

    std::cout << "====================================" << std::endl;
    std::cout << "Simulacion Verilator FINN - imagen 124" << std::endl;
    std::cout << "Imagen: " << img_path << std::endl;
    std::cout << "Referencia QONNX:" << std::endl;
    std::cout << "vnorm esperado aprox = -0.85296005" << std::endl;
    std::cout << "wnorm esperado aprox =  0.133275" << std::endl;
    std::cout << "====================================" << std::endl;

    cv::Mat img = cv::imread(img_path);

    if (img.empty()) {
        std::cerr << "ERROR: no se puede leer la imagen: "
                  << img_path << std::endl;
        return 1;
    }

    std::vector<uint8_t> input = image_to_rgb_planes(img);

    print_input_check(input);

    Vfinn_design_wrapper* top = new Vfinn_design_wrapper;

    reset_design(top);

    send_image_axi(top, input);

    std::vector<int> output_bytes = read_output_axi(top);

    if (output_bytes.size() >= 2) {

        uint8_t out0_raw_u = static_cast<uint8_t>(output_bytes[0]);
        uint8_t out1_raw_u = static_cast<uint8_t>(output_bytes[1]);

        int8_t out0_signed = static_cast<int8_t>(out0_raw_u);
        int8_t out1_signed = static_cast<int8_t>(out1_raw_u);

        std::cout << "====================================" << std::endl;
        std::cout << "Interpretacion de salida:" << std::endl;

        std::cout << "out0_raw = " << static_cast<int>(out0_raw_u) << std::endl;
        std::cout << "out1_raw = " << static_cast<int>(out1_raw_u) << std::endl;

        std::cout << "out0_signed = " << static_cast<int>(out0_signed) << std::endl;
        std::cout << "out1_signed = " << static_cast<int>(out1_signed) << std::endl;

        float vnorm = static_cast<float>(out0_signed) / 128.0f;
        float wnorm = static_cast<float>(out1_signed) / 127.0f;

        const float vmin = -0.6f;
        const float vmax = 13.0f;

        float v = ((vnorm + 1.0f) / 2.0f) * (vmax - vmin) + vmin;
        float w = wnorm * static_cast<float>(M_PI);

        std::cout << "vnorm = " << vnorm << std::endl;
        std::cout << "wnorm = " << wnorm << std::endl;
        std::cout << "v = " << v << std::endl;
        std::cout << "w = " << w << std::endl;
        std::cout << "====================================" << std::endl;
    } else {
        std::cout << "No se han recibido al menos 2 bytes de salida." << std::endl;
    }

    delete top;

    std::cout << "Simulacion finalizada." << std::endl;

    return 0;
}

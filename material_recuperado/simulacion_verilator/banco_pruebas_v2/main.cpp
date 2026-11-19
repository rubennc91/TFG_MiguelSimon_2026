#include <verilated.h>
#include "Vfinn_design_wrapper.h"

#include <opencv2/opencv.hpp>

#include <iostream>
#include <vector>
#include <string>
#include <cstdint>
#include <cmath>
#include <algorithm>

vluint64_t sim_time = 0;

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
            cv::Vec3b bgr = resized.at<cv::Vec3b>(y, x);

            uint8_t B = bgr[0];
            uint8_t G = bgr[1];
            uint8_t R = bgr[2];

            int idx = y * W + x;

            input[idx] = R;
            input[NPIX + idx] = G;
            input[2 * NPIX + idx] = B;
        }
    }

    return input;
}

bool run_network(Vfinn_design_wrapper* top,
                 const std::vector<uint8_t>& input,
                 float& v,
                 float& w)
{
    int sent = 0;
    int received = 0;

    uint8_t raw_outputs[2] = {0, 0};

    vluint64_t start_time = sim_time;
    const vluint64_t MAX_CYCLES = 3000000;

    while (received < 2 && (sim_time - start_time) < MAX_CYCLES) {

        if (sent < (int)input.size()) {
            top->s_axis_0_tvalid = 1;
            top->s_axis_0_tdata = input[sent];

            if (top->s_axis_0_tready) {
                sent++;
            }
        } else {
            top->s_axis_0_tvalid = 0;
        }

        top->m_axis_0_tready = 1;

        tick(top);

        if (top->m_axis_0_tvalid) {
            raw_outputs[received] = top->m_axis_0_tdata;
            received++;
        }
    }

    top->s_axis_0_tvalid = 0;

    if (received < 2) {
        return false;
    }

    int8_t raw_v = (int8_t)raw_outputs[0];
    int8_t raw_w = (int8_t)raw_outputs[1];

    float vnorm = std::max(-1.0f, std::min(1.0f, raw_v / 128.0f));
    float wnorm = std::max(-1.0f, std::min(1.0f, raw_w / 128.0f));

    v = ((vnorm + 1.0f) / 2.0f) * 13.6f - 0.6f;
    w = wnorm * 3.14159265f;

    std::cout << "raw_v=" << (int)raw_v
              << " raw_w=" << (int)raw_w
              << " | vnorm=" << vnorm
              << " wnorm=" << wnorm
              << " | v=" << v
              << " w=" << w
              << std::endl;

    return true;
}

int main(int argc, char** argv)
{
    Verilated::commandArgs(argc, argv);

    Vfinn_design_wrapper* top = new Vfinn_design_wrapper;

    top->ap_rst_n = 0;
    top->s_axis_0_tvalid = 0;
    top->s_axis_0_tdata = 0;
    top->m_axis_0_tready = 1;

    for (int i = 0; i < 20; i++) tick(top);

    top->ap_rst_n = 1;

    for (int i = 0; i < 20; i++) tick(top);

    std::cout << "Simulacion FINN arrancada correctamente" << std::endl;

    std::string dataset_path =
        "/home/miguel_tfg/TFG_simulacion_1/Dataset_JdeRobot/DATA/counter_montmelo_holonomic/";

    float theta = 0.0f;
    float pos_x = 240.0f;
    float pos_y = 320.0f;
    const float dt = 0.02f;

    for (int frame = 1; frame <= 500; frame++) {

        std::string img_path = dataset_path + std::to_string(frame) + ".png";

        cv::Mat img = cv::imread(img_path, cv::IMREAD_COLOR);

        if (img.empty()) {
            std::cout << "No se puede leer imagen: " << img_path << std::endl;
            break;
        }

        std::vector<uint8_t> input = image_to_rgb_planes(img);

        float v = 0.0f;
        float w = 0.0f;

        bool ok = run_network(top, input, v, w);

        if (!ok) {
            std::cout << "Frame " << frame
                      << ": no se han recibido las 2 salidas"
                      << std::endl;
            continue;
        }

        theta += w * dt;

        cv::Mat display;
        cv::resize(img, display, cv::Size(480, 640));

        pos_x += v * std::cos(theta) * dt * 20.0f;
        pos_y -= v * std::sin(theta) * dt * 20.0f;

        pos_x = std::max(20.0f, std::min((float)display.cols - 20.0f, pos_x));
        pos_y = std::max(20.0f, std::min((float)display.rows - 20.0f, pos_y));

        cv::Point center((int)pos_x, (int)pos_y);

        float arrow_length = std::max(20.0f, std::min(140.0f, std::abs(v) * 10.0f));

        cv::Point end;
        end.x = center.x + (int)(arrow_length * std::cos(theta));
        end.y = center.y - (int)(arrow_length * std::sin(theta));

        cv::arrowedLine(display, center, end, cv::Scalar(0, 255, 255), 4);

        cv::putText(display,
                    "Frame: " + std::to_string(frame),
                    cv::Point(20, 40),
                    cv::FONT_HERSHEY_SIMPLEX,
                    1.0,
                    cv::Scalar(255, 255, 255),
                    2);

        cv::putText(display,
                    "v=" + std::to_string(v) + " w=" + std::to_string(w),
                    cv::Point(20, 80),
                    cv::FONT_HERSHEY_SIMPLEX,
                    0.8,
                    cv::Scalar(255, 255, 255),
                    2);

        cv::imshow("Simulacion FINN", display);

        int key = cv::waitKey(1);
        if (key == 27) {
            break;
        }
    }

    delete top;
    return 0;
}

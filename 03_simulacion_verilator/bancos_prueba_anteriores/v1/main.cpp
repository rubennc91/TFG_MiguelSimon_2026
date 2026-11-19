#include <verilated.h>
#include "Vfinn_design_wrapper.h"

#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <cmath>

vluint64_t sim_time = 0;

struct DataRow {
    std::string image_name;
    float v;
    float w;
};

void tick(Vfinn_design_wrapper* top)
{
    top->ap_clk = 0;
    top->eval();
    sim_time++;

    top->ap_clk = 1;
    top->eval();
    sim_time++;
}

std::vector<DataRow> read_csv(const std::string& csv_path) //lee el excel del dataset v w y el nombre de la img
{
    std::vector<DataRow> rows;
    std::ifstream file(csv_path);

    if (!file.is_open()) {
        std::cerr << "No se puede abrir el CSV: " << csv_path << std::endl;
        return rows;
    }

    std::string line;
    std::getline(file, line);

    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string img, v_str, w_str;

        std::getline(ss, img, ',');
        std::getline(ss, v_str, ',');
        std::getline(ss, w_str, ',');

        if (img.empty()) continue;

        rows.push_back({img, std::stof(v_str), std::stof(w_str)}); //se guarda en este vector los valores del excel
    }

    return rows;
}

bool check_output(Vfinn_design_wrapper* top, uint8_t& pred) //comprueba la salida de la red es válida Si m_axis_0_tvalid = 1, significa que el dato de salida es válido.
{
    if (top->m_axis_0_tvalid) {
        pred = top->m_axis_0_tdata;

        std::cout << "  salida valid: "
                  << (int)top->m_axis_0_tdata
                  << " tlast=" << (int)top->m_axis_0_tlast
                  << std::endl;

        return true;
    }
    return false;
}

uint8_t run_one_image(Vfinn_design_wrapper* top, const cv::Mat& img) //esta función envia la imagen a finn
{
    cv::Mat rgb;
    cv::cvtColor(img, rgb, cv::COLOR_BGR2RGB); //Primero convierte la imagen de BGR a RGB

    top->m_axis_0_tready = 1; // se activa la salida
    top->s_axis_0_tvalid = 0;
    tick(top);

    uint8_t pred = 0;
    bool received = false;

//recorre la imagen 

    for (int y = 0; y < rgb.rows; y++) {
        for (int x = 0; x < rgb.cols; x++) {
            cv::Vec3b pixel = rgb.at<cv::Vec3b>(y, x);

            for (int c = 0; c < 3; c++) {
                top->s_axis_0_tdata = pixel[c];// por aqui se manda cada byte
                top->s_axis_0_tvalid = 1;

                do {
                    tick(top);

                    if (!received && check_output(top, pred)) {
                        received = true;
                    }

                } while (top->s_axis_0_tready == 0);
            }
        }
    }

    top->s_axis_0_tvalid = 0;

//esperar la salida despues de enviar la imagen aunque ya se haya terminado de enviar la imagen, hay que seguir simulando ciclos hasta que aparezca m_axis_0_tvalid.

    for (int i = 0; i < 100000; i++) {
        tick(top);

        if (!received && check_output(top, pred)) {
            received = true;
            break;
        }
    }

    return pred;
}

void draw_arrow(cv::Mat& img, float v, float w, float& theta, uint8_t pred) //se dibuja la flecha
{
    theta += w * 0.02f; //actualiza el angulo

    int scale = 35;
    cv::Mat big;

    cv::resize(
        img,
        big,
        cv::Size(img.cols * scale, img.rows * scale),
        0,
        0,
        cv::INTER_LINEAR
    );

    int x0 = big.cols / 2;
    int y0 = big.rows - 35;

    int length = 45 + static_cast<int>(std::abs(v) * 8.0f); // aqui se modifica la longitud de la flecha en función de la velocidad lineal

    int x1 = x0 + static_cast<int>(length * std::cos(theta));
    int y1 = y0 + static_cast<int>(length * std::sin(theta));

    cv::arrowedLine(
        big,
        cv::Point(x0, y0),
        cv::Point(x1, y1),
        cv::Scalar(0, 255, 255),
        4,
        cv::LINE_AA,
        0,
        0.25
    );

    std::string text =
        "v=" + std::to_string(v) +
        "  w=" + std::to_string(w) +
        "  pred=" + std::to_string((int)pred);

    cv::putText(
        big,
        text,
        cv::Point(10, 25),
        cv::FONT_HERSHEY_SIMPLEX,
        0.55,
        cv::Scalar(255, 255, 255),
        1
    );

    img = big;
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

    std::string csv_path =
        "../Dataset_JdeRobot/DATA/counter_montmelo_holonomic/data.csv";

    std::string img_dir =
        "../Dataset_JdeRobot/DATA/counter_montmelo_holonomic/";

    std::vector<DataRow> rows = read_csv(csv_path);

    if (rows.empty()) {
        std::cerr << "No se han leido filas del CSV." << std::endl;
        delete top;
        return 1;
    }

    float theta = -3.14159265f / 2.0f;

    int max_frames = rows.size();;

    for (int i = 0; i < max_frames && i < (int)rows.size(); i++) {
        std::string img_path = img_dir + rows[i].image_name;

        cv::Mat img = cv::imread(img_path, cv::IMREAD_COLOR);

        if (img.empty()) {
            std::cerr << "No se puede abrir imagen: " << img_path << std::endl;
            continue;
        }

        uint8_t pred = run_one_image(top, img);

static int old_pred = -1;

if ((int)pred != old_pred) {
    std::cout << "Frame " << i
              << " pred = " << (int)pred
              << std::endl;
    old_pred = pred;
}

        cv::Mat display = img.clone();
        draw_arrow(display, rows[i].v, rows[i].w, theta, pred);

        cv::imshow("FINN Verilator Montmelo", display);

        char key = (char)cv::waitKey(1);
        if (key == 'q') break;
    }

    delete top;
    return 0;
}

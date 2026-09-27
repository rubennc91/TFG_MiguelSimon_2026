#include <verilated.h>
#include "Vfinn_design_wrapper.h"

#include <opencv2/opencv.hpp>

#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <dirent.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sys/stat.h>
#include <vector>
#include <cmath>

vluint64_t sim_time = 0;

const std::string DATASET_DIR =
    "/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/output_final_miguel/Dataset_JdeRobot/DATA/counter_montmelo_holonomic/";

void tick(Vfinn_design_wrapper* top)
{
    top->ap_clk = 0;
    top->eval();
    sim_time++;

    top->ap_clk = 1;
    top->eval();
    sim_time++;
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

bool file_exists(const std::string& path)
{
    struct stat buffer;
    return stat(path.c_str(), &buffer) == 0;
}

bool is_png_file(const std::string& name)
{
    if (name.size() < 5) {
        return false;
    }

    return name.substr(name.size() - 4) == ".png";
}

int image_number_from_name(const std::string& name)
{
    std::string stem = name;
    size_t dot = stem.find_last_of('.');
    if (dot != std::string::npos) {
        stem = stem.substr(0, dot);
    }

    return std::atoi(stem.c_str());
}

std::vector<std::string> get_dataset_images(const std::string& dataset_dir)
{
    std::vector<std::string> images;

    DIR* dir = opendir(dataset_dir.c_str());
    if (dir == NULL) {
        std::cerr << "No se puede abrir la carpeta: " << dataset_dir << std::endl;
        return images;
    }

    struct dirent* entry;

    while ((entry = readdir(dir)) != NULL) {
        std::string name = entry->d_name;

        if (is_png_file(name)) {
            std::string full_path = dataset_dir + "/" + name;
            if (file_exists(full_path)) {
                images.push_back(full_path);
            }
        }
    }

    closedir(dir);

    std::sort(images.begin(), images.end(),
        [](const std::string& a, const std::string& b) {
            size_t posa = a.find_last_of('/');
            size_t posb = b.find_last_of('/');

            std::string name_a = (posa == std::string::npos) ? a : a.substr(posa + 1);
            std::string name_b = (posb == std::string::npos) ? b : b.substr(posb + 1);

            return image_number_from_name(name_a) < image_number_from_name(name_b);
        }
    );

    return images;
}

std::string filename_from_path(const std::string& path)
{
    size_t pos = path.find_last_of('/');
    if (pos == std::string::npos) {
        return path;
    }
    return path.substr(pos + 1);
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

            uint8_t b = bgr[0];
            uint8_t g = bgr[1];
            uint8_t r = bgr[2];

            int idx = y * W + x;

            input[idx] = r;
            input[NPIX + idx] = g;
            input[2 * NPIX + idx] = b;
        }
    }

    return input;
}

uint64_t pack_8_bytes(const std::vector<uint8_t>& data, int start)
{
    uint64_t word = 0;

    for (int i = 0; i < 8; i++) {
        word |= ((uint64_t)data[start + i]) << (8 * i);
    }

    return word;
}


double decode_norm_from_int8(int raw)
{
    return raw / 255.0;
}

double denormalize_v(double vnorm)
{
    return 13.6 * vnorm - 0.6;
}

double denormalize_w(double wnorm)
{
    return 2.0 * CV_PI * wnorm - CV_PI;
}


std::vector<uint8_t> read_input_bytes_from_txt(const std::string& path)
{
    std::ifstream file(path);
    std::vector<uint8_t> data;

    if (!file.is_open()) {
        std::cerr << "ERROR: no se puede abrir " << path << std::endl;
        return data;
    }

    int value;
    while (file >> value) {
        if (value < 0 || value > 255) {
            std::cerr << "ERROR: valor fuera de rango en " << path
                      << ": " << value << std::endl;
            data.clear();
            return data;
        }

        data.push_back(static_cast<uint8_t>(value));
    }

    std::cout << "Leidos " << data.size()
              << " bytes desde " << path << std::endl;

    if (data.size() != 576) {
        std::cerr << "ERROR: se esperaban 576 bytes y se han leido "
                  << data.size() << std::endl;
        data.clear();
    }

    return data;
}

std::vector<uint8_t> run_one_image(Vfinn_design_wrapper* top, const std::vector<uint8_t>& input)
{
    reset_design(top);

    const int total_words = input.size() / 8;

    int sent_words = 0;
    std::vector<uint8_t> outputs;

    const int max_cycles = 1000000;
    int cycles_without_output = 0;
    bool has_received_output = false;

    std::cout << "Enviando " << input.size()
              << " bytes en " << total_words
              << " palabras de 64 bits" << std::endl;

    for (int cycle = 0; cycle < max_cycles; cycle++) {
        if (sent_words < total_words) {
            top->s_axis_0_tvalid = 1;
            top->s_axis_0_tdata = pack_8_bytes(input, sent_words * 8);
        } else {
            top->s_axis_0_tvalid = 0;
            top->s_axis_0_tdata = 0;
        }

        top->m_axis_0_tready = 1;

        tick(top);

        if (top->s_axis_0_tvalid && top->s_axis_0_tready) {
            sent_words++;
        }

        if (top->m_axis_0_tvalid && top->m_axis_0_tready) {
            uint8_t data = static_cast<uint8_t>(top->m_axis_0_tdata);
            outputs.push_back(data);

            has_received_output = true;
            cycles_without_output = 0;

            std::cout << "Salida AXI recibida:"
                      << " ciclo = " << sim_time
                      << " data = " << static_cast<int>(data)
                      << " num_salida = " << outputs.size()
                      << std::endl;

            if (outputs.size() >= 2) {
                break;
            }
        } else {
            if (has_received_output) {
                cycles_without_output++;
            }
        }

        // Como este wrapper no tiene m_axis_0_tlast, se espera un tiempo
        // despues de recibir la ultima salida. Si no aparece nada mas,
        // se considera que la salida ha terminado.
        if (has_received_output && cycles_without_output > 5000) {
            break;
        }

        // Proteccion: si por algun motivo aparecen demasiados datos, paramos.
        if (outputs.size() >= 32) {
            break;
        }
    }

    std::cout << "Total palabras enviadas = " << sent_words << std::endl;
    std::cout << "Total bytes salida recibidos = " << outputs.size() << std::endl;

    std::cout << "Bytes salida: ";
    for (uint8_t b : outputs) {
        std::cout << static_cast<int>(b) << " ";
    }
    std::cout << std::endl;

    return outputs;
}

void draw_visualization(cv::Mat& frame, int v_raw, int w_raw, int frame_idx, const std::string& name)
{
    double vnorm = decode_norm_from_int8(v_raw);
    double wnorm = decode_norm_from_int8(w_raw);

    double v = denormalize_v(vnorm);
    double w = denormalize_w(wnorm);

    cv::Point center(frame.cols / 2, frame.rows / 2);

    double w_for_arrow = w / CV_PI;
    double angle = -CV_PI / 2.0 + w_for_arrow * CV_PI / 2.0;

    double v_for_arrow = (v - (-0.6)) / (13.0 - (-0.6));
    if (v_for_arrow < 0.0) v_for_arrow = 0.0;
    if (v_for_arrow > 1.0) v_for_arrow = 1.0;

    double length = 40.0 + v_for_arrow * 120.0;

    cv::Point end(
        center.x + (int)(length * std::cos(angle)),
        center.y + (int)(length * std::sin(angle))
    );

    cv::arrowedLine(frame, center, end, cv::Scalar(0, 0, 255), 3, cv::LINE_AA);

    cv::putText(frame, "Frame: " + std::to_string(frame_idx),
                cv::Point(20, 30), cv::FONT_HERSHEY_SIMPLEX, 0.8,
                cv::Scalar(255, 255, 255), 2);

    char line1[200];
    snprintf(line1, sizeof(line1), "v = %.3f | w = %.3f rad/s", v, w);

    cv::putText(frame, line1,
                cv::Point(20, 65), cv::FONT_HERSHEY_SIMPLEX, 0.8,
                cv::Scalar(255, 255, 255), 2);

    char line2[200];
    snprintf(line2, sizeof(line2), "vnorm = %.3f | wnorm = %.3f | raw: %d, %d",
             vnorm, wnorm, v_raw, w_raw);

    cv::putText(frame, line2,
                cv::Point(20, 100), cv::FONT_HERSHEY_SIMPLEX, 0.65,
                cv::Scalar(255, 255, 255), 2);

    cv::putText(frame, name,
                cv::Point(20, frame.rows - 20), cv::FONT_HERSHEY_SIMPLEX, 0.55,
                cv::Scalar(255, 255, 255), 1);
}


// ===== COMPARACION FINN VS CSV =====

struct GroundTruthRow {
    std::string image_name;
    double v;
    double w;
};

std::vector<GroundTruthRow> read_ground_truth_csv(const std::string& csv_path)
{
    std::vector<GroundTruthRow> rows;
    std::ifstream file(csv_path);

    if (!file.is_open()) {
        std::cerr << "ERROR: no se puede abrir CSV ground truth: "
                  << csv_path << std::endl;
        return rows;
    }

    std::string line;

    // Cabecera: image_name,v,w
    std::getline(file, line);

    while (std::getline(file, line)) {
        if (line.empty()) {
            continue;
        }

        std::stringstream ss(line);
        std::string image_name;
        std::string v_str;
        std::string w_str;

        std::getline(ss, image_name, ',');
        std::getline(ss, v_str, ',');
        std::getline(ss, w_str, ',');

        if (image_name.empty() || v_str.empty() || w_str.empty()) {
            continue;
        }

        GroundTruthRow row;
        row.image_name = image_name;
        row.v = std::stod(v_str);
        row.w = std::stod(w_str);

        rows.push_back(row);
    }

    std::cout << "Ground truth CSV leido: "
              << rows.size() << " filas desde "
              << csv_path << std::endl;

    return rows;
}

bool find_ground_truth(
    const std::vector<GroundTruthRow>& gt_rows,
    const std::string& image_name,
    GroundTruthRow& out
)
{
    for (const auto& row : gt_rows) {
        if (row.image_name == image_name) {
            out = row;
            return true;
        }
    }

    return false;
}

double normalize_v_csv(double v)
{
    return (v + 0.6) / 13.6;
}

double normalize_w_csv(double w)
{
    return (w + CV_PI) / (2.0 * CV_PI);
}

int norm_to_raw_byte(double x)
{
    int raw = (int)std::round(x * 255.0);

    if (raw < 0) raw = 0;
    if (raw > 255) raw = 255;

    return raw;
}



int main(int argc, char** argv)
{
    Verilated::commandArgs(argc, argv);

    std::string dataset_dir = DATASET_DIR;

    if (argc >= 2) {
        dataset_dir = argv[1];
    }

    const std::string csv_path =
        "../Dataset_JdeRobot/DATA_12_16/counter_montmelo_holonomic/data.csv";

    const std::string output_csv_path = "comparacion_finn_vs_csv.csv";

    // Para no estar horas simulando todos los frames.
    // Si quieres más, cambia este valor.
    const size_t MAX_FRAMES = 300;

    std::vector<std::string> images = get_dataset_images(dataset_dir);

    if (images.empty()) {
        std::cerr << "No se encontraron imagenes en: "
                  << dataset_dir << std::endl;
        return 1;
    }

    std::vector<GroundTruthRow> gt_rows = read_ground_truth_csv(csv_path);

    if (gt_rows.empty()) {
        std::cerr << "No se pudo leer ground truth CSV." << std::endl;
        return 1;
    }

    std::ofstream out_csv(output_csv_path);

    if (!out_csv.is_open()) {
        std::cerr << "ERROR: no se puede crear "
                  << output_csv_path << std::endl;
        return 1;
    }

    out_csv << "frame,image_name,"
            << "v_csv,w_csv,"
            << "vnorm_csv,wnorm_csv,"
            << "raw_v_esperado,raw_w_esperado,"
            << "out0_raw,out1_raw,"
            << "v_finn,w_finn,"
            << "error_v,error_w"
            << std::endl;

    std::cout << "Dataset: " << dataset_dir << std::endl;
    std::cout << "Imagenes encontradas: " << images.size() << std::endl;
    std::cout << "CSV comparacion: " << output_csv_path << std::endl;

    Vfinn_design_wrapper* top = new Vfinn_design_wrapper;

    top->ap_clk = 0;
    top->ap_rst_n = 0;
    top->s_axis_0_tvalid = 0;
    top->s_axis_0_tdata = 0;
    top->m_axis_0_tready = 1;

    cv::namedWindow("Simulacion FINN Verilator - Comparacion CSV", cv::WINDOW_NORMAL);

    size_t processed = 0;

    for (size_t i = 0; i < images.size(); i++) {
        if (processed >= MAX_FRAMES) {
            std::cout << "Limite MAX_FRAMES alcanzado: "
                      << MAX_FRAMES << std::endl;
            break;
        }

        std::string current_name = filename_from_path(images[i]);

        GroundTruthRow gt;

        if (!find_ground_truth(gt_rows, current_name, gt)) {
            std::cerr << "No hay ground truth para: "
                      << current_name << std::endl;
            continue;
        }

        std::cout << "Ejecutando imagen: "
                  << current_name << std::endl;

        cv::Mat img = cv::imread(images[i], cv::IMREAD_COLOR);

        if (img.empty()) {
            std::cerr << "No se puede abrir: "
                      << images[i] << std::endl;
            continue;
        }

        std::string current_stem = current_name;
        size_t dot_pos = current_stem.find_last_of('.');

        if (dot_pos != std::string::npos) {
            current_stem = current_stem.substr(0, dot_pos);
        }

        std::string hw_input_path = "hw_inputs/" + current_stem + ".txt";

        std::vector<uint8_t> input = read_input_bytes_from_txt(hw_input_path);

        if (input.empty()) {
            std::cerr << "Entrada hardware vacia o incorrecta" << std::endl;
            continue;
        }

        std::vector<uint8_t> outputs = run_one_image(top, input);

        if (outputs.size() < 2) {
            std::cout << "Frame " << i + 1
                      << " | " << current_name
                      << " | salida incompleta" << std::endl;
            continue;
        }

        int v_raw = outputs[0];
        int w_raw = outputs[1];

        double vnorm_finn = decode_norm_from_int8(v_raw);
        double wnorm_finn = decode_norm_from_int8(w_raw);

        double v_finn = denormalize_v(vnorm_finn);
        double w_finn = denormalize_w(wnorm_finn);

        double vnorm_csv = normalize_v_csv(gt.v);
        double wnorm_csv = normalize_w_csv(gt.w);

        int raw_v_esperado = norm_to_raw_byte(vnorm_csv);
        int raw_w_esperado = norm_to_raw_byte(wnorm_csv);

        double error_v = v_finn - gt.v;
        double error_w = w_finn - gt.w;

        std::cout << "Frame " << i + 1
                  << " | " << current_name
                  << " | CSV v=" << gt.v
                  << " w=" << gt.w
                  << " | esperado raw=" << raw_v_esperado
                  << "," << raw_w_esperado
                  << " | FINN raw=" << v_raw
                  << "," << w_raw
                  << " | FINN v=" << v_finn
                  << " w=" << w_finn
                  << " | error_v=" << error_v
                  << " error_w=" << error_w
                  << std::endl;

        out_csv << i + 1 << ","
                << current_name << ","
                << gt.v << ","
                << gt.w << ","
                << vnorm_csv << ","
                << wnorm_csv << ","
                << raw_v_esperado << ","
                << raw_w_esperado << ","
                << v_raw << ","
                << w_raw << ","
                << v_finn << ","
                << w_finn << ","
                << error_v << ","
                << error_w
                << std::endl;

        cv::Mat display;
        cv::resize(img, display, cv::Size(640, 480));

        draw_visualization(display, v_raw, w_raw, (int)i + 1, current_name);

        cv::imshow("Simulacion FINN Verilator - Comparacion CSV", display);

        int key = cv::waitKey(1);

        if (key == 27 || key == 'q') {
            break;
        }

        processed++;
    }

    out_csv.close();

    std::cout << "Comparacion guardada en: "
              << output_csv_path << std::endl;

    top->final();
    delete top;

    return 0;
}


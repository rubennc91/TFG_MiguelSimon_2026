#include <verilated.h>
#include "Vfinn_design_wrapper.h"

#include <opencv2/opencv.hpp>

#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <cstdint>
#include <cmath>
#include <iomanip>

vluint64_t sim_time = 0;

struct CsvRow {            // se representa una fila del excel
    std::string image_name;
    float v;
    float w;
};

void tick(Vfinn_design_wrapper* top)    // generación del reloj
{
    top->ap_clk = 0;
    top->eval();
    sim_time++;

    top->ap_clk = 1;
    top->eval();
    sim_time++;
}

int32_t sign_extend_24(uint32_t x)       //La salida de FINN utiliza números con signo de 24 bits, pero C++ no tiene directamente un tipo int24_t.
{
					 //Por eso se recibe el valor en un entero de 32 bits y se extiende el signo.
    x &= 0x00FFFFFF;
    if (x & 0x00800000) {		  //Comprobación de signo
        return (int32_t)(x | 0xFF000000);  //Cuando el número es negativo, los 8 bits superiores se rellenan con unos
    }
    return (int32_t)x;
}

std::vector<CsvRow> read_csv(const std::string& csv_path)  //Lectura del CSV
{
    std::vector<CsvRow> rows;
    std::ifstream file(csv_path);

    if (!file.is_open()) {
        std::cerr << "ERROR: no se puede abrir CSV: " << csv_path << std::endl;
        return rows;
    }

    std::string line;
    std::getline(file, line); // cabecera

    while (std::getline(file, line)) {
        if (line.empty()) continue;

        std::stringstream ss(line);
        std::string img, vstr, wstr;

        std::getline(ss, img, ',');
        std::getline(ss, vstr, ',');
        std::getline(ss, wstr, ',');

        if (img.empty() || vstr.empty() || wstr.empty()) continue;

        CsvRow row;
        row.image_name = img;
        row.v = std::stof(vstr);
        row.w = std::stof(wstr);
        rows.push_back(row);
    }

    return rows;
}

std::string find_image_path(const std::string& dataset_dir, const std::string& image_name)
{
    std::vector<std::string> candidates = {
        dataset_dir + "/" + image_name,
        dataset_dir + "/images/" + image_name,
        dataset_dir + "/imgs/" + image_name,
        dataset_dir + "/img/" + image_name
    };

    for (const auto& p : candidates) {
        std::ifstream f(p);
        if (f.good()) return p;
    }

    return dataset_dir + "/" + image_name;
}

// Preprocesado igual que el notebook:
// img.resize((16, 12)) (Ancho,Alto9)
// RGB
// transpose(2,0,1)
// flatten => RRR... GGG... BBB...  0... 191 → canal rojo 192 ... 383    → canal verde 384 ... 575    → canal azul
std::vector<uint8_t> image_to_rgb_planes(const cv::Mat& img_bgr)
{
    const int H = 12;
    const int W = 16;
    const int NPIX = H * W;

    cv::Mat resized;
    cv::resize(img_bgr, resized, cv::Size(W, H));

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

void draw_arrow(cv::Mat& canvas,
                const cv::Point& origin,
                float theta,
                float v,
                const cv::Scalar& color,
                const std::string& label,
                int text_y)
{
    int length = 40 + static_cast<int>(v * 8.0f);
    if (length < 20) length = 20;
    if (length > 180) length = 180;

    cv::Point end;
    end.x = origin.x + static_cast<int>(length * std::cos(theta));
    end.y = origin.y - static_cast<int>(length * std::sin(theta));

    cv::arrowedLine(canvas, origin, end, color, 3, cv::LINE_AA, 0, 0.25);

    cv::putText(canvas,
                label,
                cv::Point(20, text_y),
                cv::FONT_HERSHEY_SIMPLEX,
                0.7,
                color,
                2);
}

int main(int argc, char** argv)
{
    if (argc < 3) {
        std::cerr << "Uso: " << argv[0] << " <dataset_dir> <csv_path>" << std::endl;
        return 1;
    }

    std::string dataset_dir = argv[1];
    std::string csv_path = argv[2];

    std::vector<CsvRow> rows = read_csv(csv_path);
    std::ofstream results_file("resultados_verilator.csv");
    results_file << "frame,image,csv_v,csv_w,finn_v,finn_w,error_v,error_w,cycles_send,drain_cycles,total_cycles\n";

    if (rows.empty()) {
        std::cerr << "ERROR: CSV vacio o no leido correctamente" << std::endl;
        return 1;
    }

    std::cout << "CSV leido. Numero de filas: " << rows.size() << std::endl;

    Verilated::commandArgs(argc, argv);

    Vfinn_design_wrapper* top = new Vfinn_design_wrapper;

    // Reset inicial
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

    const int BYTES_PER_IMAGE = 576;
    const int MAX_CYCLES = 500000;

    const float ANGLE_OFFSET = CV_PI / 2.0f;

    cv::namedWindow("CSV vs FINN", cv::WINDOW_NORMAL);

    int max_frames = rows.size();

    for (int frame = 0; frame < max_frames; frame++) {
        const CsvRow& row = rows[frame];

        std::string img_path = find_image_path(dataset_dir, row.image_name);
        cv::Mat img = cv::imread(img_path, cv::IMREAD_COLOR);

        if (img.empty()) {
            std::cerr << "ERROR: no se puede leer imagen: " << img_path << std::endl;
            continue;
        }

        std::vector<uint8_t> input_bytes = image_to_rgb_planes(img);

        if ((int)input_bytes.size() != BYTES_PER_IMAGE) {
            std::cerr << "ERROR: imagen convertida con tamano incorrecto: "
                      << input_bytes.size() << std::endl;
            continue;
        }

        int bytes_sent = 0;
        int bytes_accepted = 0;
        int cycles_send = 0;

        uint32_t out_words[2] = {0, 0};
        int out_count = 0;

        top->m_axis_0_tready = 1;

        while (bytes_sent < BYTES_PER_IMAGE && cycles_send < MAX_CYCLES) {
            uint8_t word = input_bytes[bytes_sent];

            top->s_axis_0_tdata = word;
            top->s_axis_0_tvalid = 1;

            if (top->m_axis_0_tvalid && top->m_axis_0_tready) {
                if (out_count < 2) {
                    out_words[out_count] = (uint32_t)(top->m_axis_0_tdata & 0xFFFFFF);
                    out_count++;
                }
            }

            tick(top);
            cycles_send++;

            if (top->s_axis_0_tready) {
                bytes_sent++;
                bytes_accepted++;
            }
        }

        top->s_axis_0_tvalid = 0;
        top->s_axis_0_tdata = 0;

        if (bytes_accepted != BYTES_PER_IMAGE) {
            std::cout << "ERROR: no se aceptaron los 576 bytes de entrada en imagen "
                      << row.image_name << std::endl;
            continue;
        }

        int drain_cycles = 0;

        while (out_count < 2 && drain_cycles < MAX_CYCLES) {
            top->m_axis_0_tready = 1;

            if (top->m_axis_0_tvalid && top->m_axis_0_tready) {
                if (out_count < 2) {
                    out_words[out_count] = (uint32_t)(top->m_axis_0_tdata & 0xFFFFFF);
                    out_count++;
                }
            }

            tick(top);
            drain_cycles++;
        }

        if (out_count < 2) {
            std::cout << "No se han recibido las 2 salidas FINN para imagen: "
                      << row.image_name
                      << " salidas_recibidas=" << out_count
                      << std::endl;
            continue;
        }

        uint32_t out_word_v = out_words[0];
        uint32_t out_word_w = out_words[1];

        int32_t raw_v_s24 = sign_extend_24(out_word_v);
        int32_t raw_w_s24 = sign_extend_24(out_word_w);

        // Conversión final equivalente al ONNX:
        // global_out = raw * 0.00016658 + 0.02115575
        const float FINN_MUL_FINAL = 0.00016658f;
        const float FINN_ADD_FINAL = 0.02115575f;

        float v_norm = raw_v_s24 * FINN_MUL_FINAL + FINN_ADD_FINAL;
        float w_norm = raw_w_s24 * FINN_MUL_FINAL + FINN_ADD_FINAL;

        // El modelo usa normalización [0,1]
        float finn_v = -0.6f + v_norm * (13.0f - (-0.6f)); //v=vmin​+vnorm​(vmax​−vmin​) de [-0.6 , 13] a [0,1]
        float finn_w = -CV_PI + w_norm * (2.0f * CV_PI); //w=−π+wnorm​⋅2π  de [-pi,pi] a [0,1]

        float csv_v = row.v;
        float csv_w = row.w;
        float error_v = finn_v - csv_v;
        float error_w = finn_w - csv_w;
        int total_cycles = cycles_send + drain_cycles;

        std::cout << std::fixed << std::setprecision(5);
        std::cout << "Frame " << frame
                  << " | CSV v=" << csv_v
                  << " w=" << csv_w
                  << " | FINN v=" << finn_v
                  << " w=" << finn_w
                  << std::endl;

        results_file 
            << frame << "," 
            << row.image_name << "," 
            << csv_v << "," 
            << csv_w << "," 
            << finn_v << "," 
            << finn_w << "," 
            << error_v << "," 
            << error_w << "," 
            << cycles_send << "," 
            << drain_cycles << "," 
            << total_cycles 
            << "\n";

        // Angulo instantaneo: empieza hacia delante y se inclina segun w
        float angle_csv = ANGLE_OFFSET + csv_w;
        float angle_finn = ANGLE_OFFSET + finn_w;

        // Imagen para visualizar
        cv::Mat canvas;
        cv::resize(img, canvas, cv::Size(640, 480));

        cv::Point origin(canvas.cols / 2, canvas.rows / 2);

        // Verde = CSV / Excel
        draw_arrow(canvas,
                   origin,
                   angle_csv,
                   csv_v,
                   cv::Scalar(0, 255, 0),
                   "CSV / Excel",
                   30);

        // Roja = FINN / Verilator
        draw_arrow(canvas,
                   origin,
                   angle_finn,
                   finn_v,
                   cv::Scalar(0, 0, 255),
                   "FINN / Verilator",
                   60);

        std::ostringstream info_csv;
        info_csv << std::fixed << std::setprecision(3)
                 << "CSV  v=" << csv_v << " w=" << csv_w;

        std::ostringstream info_finn;
        info_finn << std::fixed << std::setprecision(3)
                  << "FINN v=" << finn_v << " w=" << finn_w;

        cv::putText(canvas,
                    info_csv.str(),
                    cv::Point(20, canvas.rows - 55),
                    cv::FONT_HERSHEY_SIMPLEX,
                    0.65,
                    cv::Scalar(0, 255, 0),
                    2);

        cv::putText(canvas,
                    info_finn.str(),
                    cv::Point(20, canvas.rows - 25),
                    cv::FONT_HERSHEY_SIMPLEX,
                    0.65,
                    cv::Scalar(0, 0, 255),
                    2);

        cv::imshow("CSV vs FINN", canvas);

        int key = cv::waitKey(40);
        if (key == 27 || key == 'q' || key == 'Q') {
            break;
        }
    }

    results_file.close();
    top->final();
    delete top;

    return 0;
}

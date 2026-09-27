#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <vector>
#include <cstdint>
#include <string>

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

int main()
{
    std::string img_path =
        "/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/output_final_miguel/Dataset_JdeRobot/DATA_12_16/counter_montmelo_holonomic/124.png";

    cv::Mat img = cv::imread(img_path);

    if (img.empty()) {
        std::cerr << "ERROR: no se puede leer la imagen: " << img_path << std::endl;
        return 1;
    }

    std::vector<uint8_t> input = image_to_rgb_planes(img);

    std::ofstream f("input_124_opencv.txt");

    for (size_t i = 0; i < input.size(); i++) {
        f << static_cast<int>(input[i]);
        if (i + 1 < input.size()) {
            f << " ";
        }
    }

    f.close();

    std::cout << "Guardado input_124_opencv.txt con "
              << input.size()
              << " valores." << std::endl;

    return 0;
}

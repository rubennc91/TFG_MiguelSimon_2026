cmake_minimum_required(VERSION 3.8)

project(f1_neural_controller)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(cv_bridge REQUIRED)
find_package(OpenCV REQUIRED)

add_executable(
  f1_controller
  src/f1_controller.cpp
)

ament_target_dependencies(
  f1_controller
  rclcpp
  sensor_msgs
  geometry_msgs
  cv_bridge
)

target_include_directories(
  f1_controller
  PRIVATE
  ${OpenCV_INCLUDE_DIRS}
)

target_link_libraries(
  f1_controller
  ${OpenCV_LIBRARIES}
)

install(
  TARGETS f1_controller
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()

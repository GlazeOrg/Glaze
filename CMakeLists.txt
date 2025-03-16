cmake_minimum_required (VERSION 3.10)
project(Glaze LANGUAGES CXX)

set(CMake_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)

#find_package(opencv4 CONFIG REQUIRED)
#target_link_libraries(main PRIVATE opencv_ml opencv_dnn opencv_core opencv_flann)

set(OpenCV_DIR ./vcpkg/vcpkg_installed/x64-windows/share/opencv4)
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})       
link_directories(${OpenCV_LIB_DIR})              

add_subdirectory(src)
#add_subdirectory(3rdparty)
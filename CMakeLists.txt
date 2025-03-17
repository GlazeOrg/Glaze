cmake_minimum_required (VERSION 3.10)
project(Glaze LANGUAGES CXX)

set(CMake_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(OpenCV_DIR ./vcpkg/vcpkg_installed/x64-windows/share/opencv4)

#find_package(opencv4 CONFIG REQUIRED)

find_package(OpenCV REQUIRED)

add_subdirectory(src)

set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT Glaze)
#add_subdirectory(3rdparty)
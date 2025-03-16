@echo off
mkdir build
cd build
cmake -B build -S . -DOpenCV_DIR=./vcpkg/vcpkg_installed/x64-windows/share/opencv
cmake --build build --config=Release
cmake -G "Visual Studio 17 2022" ..
cd ..
mklink Glaze.sln build\Glaze.sln
pause
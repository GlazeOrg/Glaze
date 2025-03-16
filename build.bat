@echo off
mkdir build
cd build
cmake -B build
cmake --build build --config=Release
cmake -G "Visual Studio 17 2022" ..
cd ..
mklink Glaze.sln build\Glaze.sln
pause
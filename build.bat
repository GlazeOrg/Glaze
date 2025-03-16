@echo off
copy ".\vcpkg.json" ".\vcpkg\vcpkg.json"
cd vcpkg
vcpkg x-update-baseline --add-initial-baseline
vcpkg install
cd ..
mkdir build
cd build
cmake -B build
cmake --build build --config=Release
cmake -G "Visual Studio 17 2022" ..
cd ..
mklink Glaze.sln build\Glaze.sln
pause
@echo off
copy ".\vcpkg.json" ".\vcpkg\vcpkg.json"
cd vcpkg
vcpkg x-update-baseline --add-initial-baseline
vcpkg install
cd ..
cmake -B build
mklink Glaze.sln build\Glaze.sln
pause
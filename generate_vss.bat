pushd vcpkg
    call bootstrap-vcpkg.bat
    vcpkg install ^
    gtest ^
    --triplet x64-windows-static
popd

rd /s /q build
mkdir build
pushd build
    "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" ^
    -DCMAKE_TOOLCHAIN_FILE=../vcpkg/scripts/buildsystems/vcpkg.cmake ^
    -DVCPKG_TARGET_TRIPLET=x64-windows-static^
    ..
popd

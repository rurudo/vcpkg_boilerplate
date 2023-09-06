cmake_minimum_required(VERSION 3.15)
cmake_policy(SET CMP0091 NEW)
project(main)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(sources)
add_subdirectory(tests)

set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT main_test)
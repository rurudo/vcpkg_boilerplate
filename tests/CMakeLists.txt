set(project_name main_test)
add_executable(${project_name}
    main_test.cpp
)

target_include_directories(${project_name} PRIVATE
    ${CMAKE_SOURCE_DIR}/sources
)

enable_testing()

find_package(GTest CONFIG REQUIRED)
target_link_libraries(${project_name} PRIVATE
    main_core

    GTest::gtest GTest::gtest_main GTest::gmock GTest::gmock_main
)

set_target_properties(${project_name} PROPERTIES
  MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
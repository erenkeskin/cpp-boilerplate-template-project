cmake_minimum_required(VERSION 3.20)

project(Template)
get_filename_component(PROJECT_DIRECTORY ./ ABSOLUTE)
add_compile_definitions(PROJECT_DIRECTORY="${PROJECT_DIRECTORY}")

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_COMPILER_VERSION 11.0)

add_subdirectory(src)

option(BUILD_TESTS "Build the tests" OFF)

if(BUILD_TESTS)
    enable_testing()
    add_subdirectory(test)
endif()

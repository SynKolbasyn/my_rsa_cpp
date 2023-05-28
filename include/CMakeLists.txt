cmake_minimum_required(VERSION 3.26.3)

set(CMAKE_C_COMPILER "/usr/lib/llvm-15/bin/clang" CACHE STRING "C compiler" FORCE)
set(CMAKE_CXX_COMPILER "/usr/lib/llvm-15/bin/clang++" CACHE STRING "C++ compiler" FORCE)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(rsa VERSION 1.0)
add_library(rsa rsa.cpp rsa.hpp)
target_include_directories(rsa PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

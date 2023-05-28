cmake_minimum_required(VERSION 3.26.3)

set(CMAKE_C_COMPILER "/usr/lib/llvm-15/bin/clang" CACHE STRING "C compiler" FORCE)
set(CMAKE_CXX_COMPILER "/usr/lib/llvm-15/bin/clang++" CACHE STRING "C++ compiler" FORCE)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "-march=native -pipe -Ofast -flto=full")

project(TestRSA VERSION 1.0)
add_executable(main src/main.cpp)
add_subdirectory(include)
target_link_libraries(main rsa)

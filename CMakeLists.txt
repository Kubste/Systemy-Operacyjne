cmake_minimum_required(VERSION 3.28)
project(DiningPhilosophers)

set(CMAKE_CXX_STANDARD 20)

add_executable(DiningPhilosophers
        Monitor.hpp
        Philosopher.hpp
        Philosopher.cpp
        Monitor.cpp
        main.cpp)

set(CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")
set(CMAKE_EXE_LINKER_FLAGS "-static -static-libgcc -static-libstdc++")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -std=c++20")
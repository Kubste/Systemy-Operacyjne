#ifndef PHILOSOPHER_HPP
#define PHILOSOPHER_HPP

#include "Monitor.hpp"
#include <vector>
#include <bits/stdc++.h>
#include <pthread.h>
#include <unistd.h>
#include <random>

using namespace std;

class Philosopher {

    private:
        int ID;
        Monitor &monitor;
        thread philosopherThread;
        int max_time_eating{};
        int max_time_thinking{};
        uniform_int_distribution<> distribution_eating;
        uniform_int_distribution<> distribution_thinking;
        mt19937 gen;

    public:
        Philosopher(int ID, Monitor &monitor, int max_time_eating, int max_time_thinking);
        Philosopher(Philosopher&& other) noexcept : ID(other.ID), monitor(other.monitor), philosopherThread(std::move(other.philosopherThread)) {}
        ~Philosopher();
        void run();
        void put_forks();
        void take_forks();
        void start();
        void join();
};

#endif

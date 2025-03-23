#ifndef MONITOR_HPP
#define MONITOR_HPP

#include <vector>
#include <pthread.h>
#include <unistd.h>
#include <chrono>
#include <thread>
#include <iostream>

using namespace std;

class Monitor {

    #define THINKING 0
    #define HUNGRY 1
    #define EATING 2

    private:
        int N;
        vector<int> states;
        vector<pthread_cond_t> conditions;
        pthread_mutex_t mutex{};
        vector<chrono::time_point<chrono::system_clock>> ate_times;
        thread thread;

    public:
        Monitor(int N);
        ~Monitor();

        void run();
        void start();
        void print_status();
        void take_forks(int ID);
        void put_forks(int ID);
        void test(int ID);
};

#endif

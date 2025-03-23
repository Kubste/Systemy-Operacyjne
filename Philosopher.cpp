#include "Philosopher.hpp"

Philosopher::Philosopher(int ID, Monitor &monitor, int max_time_eating, int max_time_thinking) : ID(ID), monitor(monitor),
    max_time_eating(max_time_eating), max_time_thinking(max_time_thinking) {}

void Philosopher::start() {
    thread = std::thread(&Philosopher::run, this);
}

void Philosopher::run() {
    random_device random_device;
    gen.seed(random_device());
    distribution_eating.param(uniform_int_distribution<>::param_type(0, max_time_eating));
    distribution_thinking.param(uniform_int_distribution<>::param_type(0, max_time_thinking));
    while(true) {
        this->take_forks();
        this->put_forks();
    }
}

void Philosopher::put_forks() {
    this_thread::sleep_for(chrono::seconds(distribution_eating(gen)));
    monitor.put_forks(ID);
    this_thread::sleep_for(chrono::seconds(1));
}

void Philosopher::take_forks() {
    this_thread::sleep_for(chrono::seconds(distribution_thinking(gen)));
    monitor.take_forks(ID);
    this_thread::sleep_for(chrono::seconds(1));
}

void Philosopher::join() {
    if(thread.joinable()) thread.join();
}

Philosopher::~Philosopher() {
    this->join();
}

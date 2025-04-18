#include "Monitor.hpp"
#include "Philosopher.hpp"

Monitor::Monitor(int N) : N(N), states(N, THINKING), conditions(N) {
    for(int i = 0; i < N; i++) hungry_for.push_back(-1);
    pthread_mutex_init(&mutex, nullptr);
    for(int i = 0; i < N; i++) pthread_cond_init(&conditions[i], nullptr);
}

Monitor::~Monitor() {
    pthread_mutex_destroy(&mutex);
    for(int i = 0; i < N; i++) pthread_cond_destroy(&conditions[i]);
}

void Monitor::start() {
    monitorThread = std::thread(&Monitor::run, this);
}

void Monitor::run() {
    while(true) {
        this->print_status();
        this_thread::sleep_for(chrono::seconds(1));
    }
}

void Monitor::test(int ID) {
    int left = ((ID + N - 1) % N);
    int right = ((ID + 1) % N);

    if(states[ID] == HUNGRY && states[left] != EATING && states[right] != EATING) {
        states[ID] = EATING;
        pthread_cond_signal(&conditions[ID]);
    }
}

void Monitor::take_forks(int ID) {
    pthread_mutex_lock(&mutex);

    states[ID] = HUNGRY;
    this->test(ID);

    while(states[ID] != EATING) pthread_cond_wait(&conditions[ID], &mutex);
    pthread_mutex_unlock(&mutex);
}

void Monitor::put_forks(int ID) {
    pthread_mutex_lock(&mutex);

    states[ID] = THINKING;

    int left = ((ID + N - 1) % N);
    int right = ((ID + 1) % N);

    this->test(left);
    if(states[left] == HUNGRY) pthread_cond_signal(&conditions[left]);

    this->test(right);
    if(states[right] == HUNGRY) pthread_cond_signal(&conditions[right]);

    pthread_mutex_unlock(&mutex);
}

void Monitor::print_status() {
    pthread_mutex_lock(&mutex);
    for(int i = 0; i < N; i++) {
        string status;
        if(states[i] == THINKING) status = "Thinking";
        else if(states[i] == HUNGRY) status = "Hungry";
        else status = "Eating";
        if(states[i] == HUNGRY) hungry_for[i]++;
        else hungry_for[i] = -1;

        if(states[i] == HUNGRY) cout << "Philosopher " << i + 1 << " is Hungry (hungry for " << hungry_for[i] << " seconds)" << endl;
        else cout << "Philosopher " << i + 1 << " is " << status << endl;
    }
    cout << "-------------------------------------" << endl;
    pthread_mutex_unlock(&mutex);
}

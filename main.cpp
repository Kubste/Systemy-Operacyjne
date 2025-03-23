#include "Philosopher.hpp"
#include "Monitor.hpp"
#include <vector>

vector<int> read_input_file(const string& path) {
    vector<int> data;
    ifstream file;
    string line;
    string sub_str;

    file.open(path);

    if(file.is_open()) {
        while(getline(file, line)) {
            size_t position = line.find('#');
            sub_str = line.substr(position + 2);
            data.push_back(stoi(sub_str));
        }
    }
    return data;
}

int main() {
    vector<int> data = read_input_file("files/input.txt");
    const int N = data[0];
    const int max_time_eating = data[1];
    const int max_time_thinking = data[2];
    Monitor monitor(N);
    vector<Philosopher> philosophers;

    monitor.start();

    for(int i = 0; i < N; i++) philosophers.emplace_back(i, monitor, max_time_eating, max_time_thinking);
    for(auto &philosopher : philosophers) philosopher.start();
    for(auto &philosopher : philosophers) philosopher.join();

    return 0;
}
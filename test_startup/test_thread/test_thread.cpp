#include <iostream>
#include <vector>
#include <thread>

using namespace std;

vector<thread> spawnTest()
{
    vector<thread> thr;
    for (int indexdd=0; indexdd< 16; indexdd++)
    {
        thr.push_back(thread([&indexdd](){
            cout << "Print from thread_" << indexdd << endl;
            })
        );
    }
    return thr;
}

int main()
{
    cout << "Print from main" << endl;
    vector<thread> th = spawnTest();
    for (auto& item : th)
        item.join();
    return 1;
}

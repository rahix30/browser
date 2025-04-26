#include <iostream>

extern "C" {
    __declspec(dllexport) void HelloFromBridge() {
        std::cout << "Hello from C++/CLI Bridge!" << std::endl;
    }
}
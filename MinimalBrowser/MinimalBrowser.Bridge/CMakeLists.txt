cmake_minimum_required(VERSION 3.10)
project(MinimalBrowser.Bridge)

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /clr")

add_library(MinimalBrowser.Bridge SHARED bridge.cpp)

set_target_properties(MinimalBrowser.Bridge PROPERTIES
    WINDOWS_EXPORT_ALL_SYMBOLS ON
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON)
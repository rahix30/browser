cmake_minimum_required(VERSION 3.10)
project(MinimalBrowser)

add_executable(MinimalBrowser main.cpp)

add_subdirectory(MinimalBrowser.Bridge)

set_property(TARGET MinimalBrowser PROPERTY WINDOWS_EXPORT_ALL_SYMBOLS ON)
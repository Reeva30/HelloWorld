cmake_minimum_required(VERSION 3.15)

project(HelloWorld LANGUAGES CXX)

# Find the Qt installation
set(CMAKE_PREFIX_PATH "C:/Qt/5.15.2/mingw81_64")

find_package(Qt5 COMPONENTS Core Widgets Gui REQUIRED)

add_executable(HelloWorld main.cpp)

target_link_libraries(HelloWorld Qt5::Core Qt5::Widgets Qt5::Gui)

target_include_directories(HelloWorld PRIVATE ${Qt5Widgets_INCLUDE_DIRS})

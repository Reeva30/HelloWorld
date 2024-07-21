cmake_minimum_required(VERSION 3.15)

project(HelloWorld LANGUAGES CXX)

# Set the Qt installation directory
set(CMAKE_PREFIX_PATH "C:/Qt/5.15.2/mingw81_64")

# Find the required Qt modules
find_package(Qt5 COMPONENTS Core Widgets Gui REQUIRED)

add_executable(HelloWorld main.cpp)

# Link the Qt libraries
target_link_libraries(HelloWorld Qt5::Core Qt5::Widgets Qt5::Gui)

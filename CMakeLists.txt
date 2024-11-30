##cmake_minimum_required(VERSION 3.27)
##project(lab4)
##
##set(CMAKE_CXX_STANDARD 17)
##
##add_executable(lab4 main.cpp
##        include/Array.h
##        include/Figure.h
##        include/Functions.h
##        include/Pentagon.h
##        include/Rhombus.h
##        include/Trapezoid.h
##        main.cpp
##        tests/test.cpp)
#cmake_minimum_required(VERSION 3.27.8)
#project(lab4)
#
#set(CMAKE_CXX_STANDARD 20)
#
### Создаем библиотеку lab3_solution
##add_library(lab3_solution
##        src/Trapezoid.cpp
##        src/Rhombus.cpp
##        src/Pentagon.cpp
##        src/FigureArray.cpp
##)
#
## Основной исполняемый файл
#add_executable(lab4_main main.cpp)
#target_link_libraries(lab4_main lab4_solution)
#
## Подключаем Google Test с помощью FetchContent
#include(FetchContent)
#FetchContent_Declare(
#        googletest
#        URL https://github.com/google/googletest/archive/refs/tags/release-1.12.1.zip
#)
#FetchContent_MakeAvailable(googletest)
#
## Указываем путь к заголовкам Google Test
#include_directories(${gtest_SOURCE_DIR}/include)
#
## Находим все тестовые файлы в папке tests
#file(GLOB_RECURSE TEST_SOURCES "tests/*.cpp")
#
## Исполняемый файл для тестов
#add_executable(lab4_tests ${TEST_SOURCES})
#target_link_libraries(lab4_tests lab4_solution GTest::gtest_main)
#
## Подключаем Google Test
#include(GoogleTest)
#gtest_discover_tests(lab4_tests)
#
## Включаем тестирование
#enable_testing()


cmake_minimum_required(VERSION 3.27.8)
project(lab4)

set(CMAKE_CXX_STANDARD 20)

# Основной исполняемый файл
add_executable(lab4_main
        main.cpp
        include/Array.h
        include/Figure.h
        include/Functions.h
        include/Pentagon.h
        include/Rhombus.h
        include/Trapezoid.h
)

# Подключаем Google Test с помощью FetchContent
include(FetchContent)
FetchContent_Declare(
        googletest
        URL https://github.com/google/googletest/archive/refs/tags/release-1.12.1.zip
)
FetchContent_MakeAvailable(googletest)

# Указываем путь к заголовкам Google Test
include_directories(${gtest_SOURCE_DIR}/include)

# Находим все тестовые файлы в папке tests
file(GLOB_RECURSE TEST_SOURCES "tests/*.cpp")

# Исполняемый файл для тестов
add_executable(lab4_tests ${TEST_SOURCES})
target_link_libraries(lab4_tests GTest::gtest_main)

# Подключаем Google Test
include(GoogleTest)
gtest_discover_tests(lab4_tests)

# Включаем тестирование
enable_testing()

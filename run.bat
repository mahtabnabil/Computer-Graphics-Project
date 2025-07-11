cls
@echo off

echo Compiling...
g++.exe ^
  -std=c++17 ^
  -Wall -g ^
  -I"C:\Program Files\CodeBlocks\MinGW\include" ^
  -c main.cpp -o obj\Debug\main.o

if errorlevel 1 (
  echo Compilation failed.
  exit /b 1
)

echo Linking...
g++.exe ^
  -std=c++17 ^
  -L"C:\Program Files\CodeBlocks\MinGW\lib" ^
  -o bin\Debug\main.exe obj\Debug\main.o ^
  -lfreeglut -lopengl32 -lglu32 -lwinmm -lgdi32 -lopenal32

if errorlevel 1 (
  echo Linking failed.
  exit /b 1
)

echo Running...
bin\Debug\main.exe

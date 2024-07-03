# Makefile for test project on Windows using MinGW

CC = g++  # Compiler
CFLAGS = -std=c++11  # Compiler flags

# Source files
SOURCES = main.cpp functions.cpp

# Object files
OBJECTS = $(SOURCES:.cpp=.o)

# Executable name
EXECUTABLE = test.exe

# Default target
all: $(EXECUTABLE)

# Linking
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(EXECUTABLE)

# Compilation
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

# Clean
clean:
	del $(OBJECTS) $(EXECUTABLE)
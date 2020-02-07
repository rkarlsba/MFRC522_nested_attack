#makefile for mifareCrack
exe=crack
C=gcc
CXX = g++
CXXFLAGS = --std=c++11
objdir=build
objects=$(objdir)/main.o $(objdir)/RC522.o $(objdir)/MFrec.o $(objdir)/crapto1.o $(objdir)/crypto1.o

exe: $(objects)
	g++ $(objects) -o $(exe) -lpthread

build/%.o: src/%.cpp 
	$(CXX) -c $(CXXFLAGS) $^ -o $@
build/%.o: src/%.c
	$(C) -c $^ -o $@

clean:
	rm -f $(exe) $(objects)

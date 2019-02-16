
.PHONY: clean
.PHONY: all

all: main.o foo.o
	g++ main.o foo.o

clean:
	rm -vf main.o foo.o a.exe

main.o: main.cpp foo.h
	g++ -c main.cpp

foo.o: foo.cpp foo.h
	g++ -c foo.cpp


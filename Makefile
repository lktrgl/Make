
.PHONY: clean
.PHONY: all

all: main.o foo.o
	gcc -lstdc++ main.o foo.o

clean:
	rm -vf main.o foo.o a.out

main.o: main.cpp foo.h
	gcc -c main.cpp

foo.o: foo.cpp foo.h
	gcc -c foo.cpp


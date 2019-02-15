# Make

The project describes how to write a *Makefile-based* project that consist of several files.


## Files of the project

The project consists of the following files:
 - *Makefile* - describes dependencies in the project and rules, and
   commands to assemble the project
 - *main.cpp* - entry file, keeps main() function
 - *foo.h* - declaration of the Foo class
 - *foo.cpp* - definition of the Foo class

## Building the project

The following steps should be make in order to obtain and build the project:
 - clone the repository launching the command: `git clone https://github.com/lktrgl/Make.git`
 - run `make clean`to clean the temporary files up
 - run `make all` to assemble the project

## File relations and dependencies

```mermaid
graph LR
A[foo.h] -- included to --> B[foo.cpp]
A -- included to --> C[main.cpp]
B -- generates --> D[foo.o]
C -- generates --> E[main.o]
D --> F((+))
E --> F
F -- links --> G[a.out]
U[Makefile] -- describes relations --> A
U -- describes relations --> B
U -- describes relations --> C
U -- describes relations --> D
U -- describes relations --> E
U -- describes relations --> G

```

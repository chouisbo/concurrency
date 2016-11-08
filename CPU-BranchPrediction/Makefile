CXX ?= g++
CFLAGS = -Wall -Wconversion -O3 -fPIC

JAVAC = javac
JAVAC_FLAGS = -target 1.8 -source 1.8

SCALAC = scalac

all: main-sorted main-unsorted main-bithacks MainSorted.class MainUnsorted.class ScalaSorted.class ScalaUnsorted.class

main-sorted: main-sorted.cpp
	$(CXX) $(CFLAGS) main-sorted.cpp -o main-sorted
main-unsorted: main-unsorted.cpp
	$(CXX) $(CFLAGS) main-unsorted.cpp -o main-unsorted
main-bithacks: main-bithacks.cpp
	$(CXX) $(CFLAGS) main-bithacks.cpp -o main-bithacks
MainSorted.class:
	$(JAVAC) $(JAVAC_FLAGS) MainSorted.java
MainUnsorted.class:
	$(JAVAC) $(JAVAC_FLAGS) MainUnsorted.java
ScalaSorted.class:
	$(SCALAC) ScalaSorted.scala
ScalaUnsorted.class:
	$(SCALAC) ScalaUnsorted.scala

clean:
	rm -f main-sorted main-unsorted main-bithacks *.class

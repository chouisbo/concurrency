#!/bin/bash


echo "=====================   g++     100000    ======================="
echo "Sorted: "
./main-sorted
echo "Unsorted: "
./main-unsorted
echo "Bithacks: "
./main-bithacks
echo "=====================   java    100000   ======================="
echo "Sorted: "
java MainSorted
echo "Unsorted: "
java MainUnsorted
echo "=====================   scala   100000  ======================="
echo "Sorted: "
time scala ScalaSorted
echo "Unsorted: "
time scala ScalaUnsorted
echo "=====================   go      100000  ======================="
echo "Sorted: "
go run sorted.go
echo "Unsorted: "
go run unsorted.go
echo "=====================   python  1000  ======================="
echo "Sorted: "
./mainsorted.py
echo "Unsorted: "
./mainunsorted.py

exit 0


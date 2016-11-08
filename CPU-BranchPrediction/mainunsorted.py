#!/usr/bin/env python
# -*- coding:utf-8 -*-


import time
import random


def main():
    ArraySize, array, _sum = 32768, [], 0
    for i in xrange(ArraySize):
        array.append(random.randint(0, 255))


    # array.sort()

    _start = time.clock()
    for i in xrange(1000):
        for el in array: 
            if el >= 128: 
                _sum += el
    elapsedTime = time.clock() - _start

    print elapsedTime
    print "sum = %d" % _sum


if __name__ == "__main__":
    main()




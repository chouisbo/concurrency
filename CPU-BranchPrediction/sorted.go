
package main

import (
    "fmt"
    "time"
    "sort"
    "math/rand"
)

func main() {
    var data [32768]int
    var sum = 0

    var rd = rand.New(rand.NewSource(time.Now().Unix()))
    for i := 0; i < len(data); i++ {
        data[i] = rd.Intn(256)
    }

    var _start = time.Now().Unix()
    sort.Ints(data[:])

    for j :=0; j < 100000; j++ {
        for i :=0; i < len(data); i++ {
            if data[i] >= 128 {
                sum += data[i]
            }
        }
    }
    
    fmt.Printf("elapsed %d.\n", time.Now().Unix() - _start)
    fmt.Printf("%d\n", sum) 
}


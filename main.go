package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now()
	sum := 0
	for i := 0; i < 10000000000; i++ {
		sum++
	}
	end := time.Since(start)
	fmt.Print(end)
}

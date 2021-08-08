package main

import (
	"fmt"
	"math/big"
	"os"
	"strconv"
)

func main() {
	index, err := strconv.Atoi(os.Args[1])
	if err != nil {
		panic(err)
	}
	assertIndex(index)
	fmt.Println(fibonacci(index))
}

func fibonacci(index int) string {
	previous := big.NewInt(1)
	current := big.NewInt(1)
	for i := 3; i <= index; i++ {
		previous.Add(previous, current)
		current, previous = previous, current
	}

	return current.String()
}

func assertIndex(index int) {
	if index < 1 || index > 127 {
		panic("Index must be a positive integer between 1 and 127.")
	}
}

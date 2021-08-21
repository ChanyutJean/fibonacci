package main

import (
	"fmt"
	"math/big"
	"os"
	"strconv"
)

func main() {
	arg, err := strconv.Atoi(os.Args[1])
	if err != nil {
		panic(err)
	}
	index := int16(arg)
	assertIndex(index)
	fmt.Println(fibonacci(index))
}

func fibonacci(index int16) string {
	previous := big.NewInt(1)
	current := big.NewInt(1)

	for i := int16(3); i <= index; i++ {
		previous.Add(previous, current)
		current, previous = previous, current
	}

	return current.String()
}

func assertIndex(index int16) {
	if index < 1 || index > 32766 {
		panic("Index must be a positive integer between 1 and 32766.")
	}
}

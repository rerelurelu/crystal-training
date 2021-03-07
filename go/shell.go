package main

import (
	"fmt"

	"go/prep_data"
)

var numbers []int = prep_data.CreateNumbers()

func main() {
	var num int = len(numbers)
	fmt.Println(num)
	fmt.Println(numbers)	
}


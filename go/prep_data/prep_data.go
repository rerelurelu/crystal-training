package prep_data

import (
	"fmt"
	"math/rand"
)

var num_range int = 10
var numbers []int

func CreateNumbers() []int {
	for i := 0; i < num_range; i++ {
		numbers = append(numbers, rand.Intn(1000))
	}
	return numbers
}

func ShowInputData(numbers []int) {
	fmt.Println("original")
	fmt.Println(numbers)
	fmt.Println("sorted")
}

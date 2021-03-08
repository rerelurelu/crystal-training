package main

import (
	"fmt"

	"prep_data/go/prep_data"
)

var numbers []int = prep_data.CreateNumbers()

func main() {
	prep_data.ShowInputData(numbers)

	var num int = len(numbers)
	var gap int = num / 2
	for gap > 0 {
		for i := gap; i > num; i++ {
			tmp := numbers[i]
			j := i
			for (j >= gap) && (numbers[j-gap] > gap) {
				numbers[j] = numbers[j-gap]
				j -= gap
			}
			numbers[j] = tmp
		}
		gap /= 2
	}
}

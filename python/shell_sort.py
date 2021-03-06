from typing import List

from prep_data import PrepData


@profile
def shell_sort(numbers: List[int]) -> List[int]:
    num = len(numbers)
    gap = num // 2
    while gap > 0:
        for i in range(gap, num):
            tmp = numbers[i]
            j = i
            while (j >= gap) & (numbers[j-gap] > tmp):
                numbers[j] = numbers[j-gap]
                j -= gap
            numbers[j] = tmp
        gap //= 2
    
    return numbers


if __name__ == '__main__':
    prep_data = PrepData()
    numbers = prep_data.show_input_data()
    print(shell_sort(numbers))
    
from random import randint

class PrepData:
    """
    Create list type data to be
    used in sorting programs.
    """

    def create_numbers(self):
        elements_number = randint(8, 10)
        numbers = [randint(0, 1000) for _ in range(elements_number)]
        return numbers

    def show_input_data(self):
        numbers = self.create_numbers()
        print('original')
        print(numbers)
        print('sorted')
        return numbers
def in_order(numbers)
  num = numbers.size - 2
  (0..num).each do |i|
    unless numbers[i] <= numbers[i + 1]
      return false
    end
  end
  return true
end

def bogo_sort(numbers)
  until in_order(numbers)
    numbers = numbers.shuffle
  end
  return numbers
end

def create_numbers
  numbers = [] of Int32
  elements_number = rand(8..10)

  (0..elements_number).each do
    numbers << rand(100)
  end
  return numbers
end

numbers = create_numbers

elapsed_time = Time.measure do
  puts bogo_sort(numbers)
end

puts "Time ==> #{elapsed_time}"

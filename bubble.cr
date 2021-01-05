def bubble_sort(numbers)
  num = numbers.size

  (0..num).each do |i|
    (0..num - 2 - i).each do |j|
      if numbers[j] > numbers[j+1]
        numbers[j], numbers[j+1] = numbers[j+1], numbers[j]
      end
    end
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
puts "original"
puts numbers
puts "sorted"

elapsed_time = Time.measure do
  puts bubble_sort(numbers)
end

puts "Time ==> #{elapsed_time}"
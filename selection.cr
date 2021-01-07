require "./prep_data"


def selection_sort(numbers : Array(Int32))
  num = numbers.size - 1
  (0...num).each do |i|
    idx = i
    (i+1...num).each do |j|
      if numbers[idx] > numbers[j]
        idx = j
      end
    end
    numbers[i], numbers[idx] = numbers[idx], numbers[i]
  end
  return numbers
end

numbers = PrepData.new.show_input_data

elapsed_time = Time.measure do 
  puts selection_sort(numbers)
end

puts "Time ==> #{elapsed_time}"
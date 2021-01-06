require "./prep_data"


def comb_sort(numbers : Array(Int32))
  num = numbers.size
  gap = num
  swapped = true

  while gap != 1 || swapped
    gap = (gap / 1.3).to_i32
    
    if gap < 1
      gap = 1
    end

    swapped = false

    (0...num - gap).each do |i|
      if numbers[i] > numbers[i+gap]
        numbers[i], numbers[i+gap] = numbers[i+gap], numbers[i]
        swapped = true
      end
    end
  end
  return numbers
end

numbers = PrepData.new.show_input_data 

elapsed_time = Time.measure do
  puts comb_sort(numbers)
end

puts "Time ==> #{elapsed_time}"
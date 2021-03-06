require "./prep_data"

def gnome_sort(numbers : Array(Int32))
  num = numbers.size
  idx = 0

  while idx < num
    if idx == 0
      idx += 1
    end

    if numbers[idx] >= numbers[idx-1]
      idx += 1
    else
      numbers[idx], numbers[idx-1] = numbers[idx-1], numbers[idx]
      idx -= 1
    end
  end
  return numbers
end

numbers = PrepData.new.show_input_data

elapsed_time = Time.measure do 
  puts gnome_sort(numbers)
end

puts "Time ==> #{elapsed_time}"
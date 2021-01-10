require "./prep_data"

def insertion_sort(numbers : Array(Int32))
  num = numbers.size - 1

  (1..num).each do |i|
    tmp = numbers[i]
    j = i - 1
    
    while j >= 0 && numbers[j] > tmp
      numbers[j+1] = numbers[j]
      j -= 1
  end
  numbers[j+1] = tmp
end
return numbers
end

numbers = PrepData.new.show_input_data

elapsed_time = Time.measure do 
  puts insertion_sort(numbers)
end

puts "Time ==> #{elapsed_time}"
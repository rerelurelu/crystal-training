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

def bucket_sort(numbers : Array(Int32))
  max_num = numbers.max
  num = numbers.size - 1
  size = max_num // num
  buckets = Array.new(num, [0])

  numbers.each do |element|
    i = element // size
  
    if i != size
      buckets[i] << element
    else
      buckets[size-1] << element
    end
  end

  (0...size).each do |i|
    insertion_sort(buckets[i])
  end

  result = [] of Int32 | Array(Int32)
  (0...size).each do |i|
    result << buckets[i]
  end
  
  return result
end

numbers = PrepData.new.show_input_data

elapsed_time = Time.measure do 
  puts bucket_sort(numbers)
end

puts "Time ==> #{elapsed_time}"
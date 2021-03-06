require "./prep_data"

def insertion_sort(buckets)
  if !(buckets.nil?)
    num = buckets.size
    
    (1...num).each do |i|
      tmp = buckets[i]
      j = i - 1
        
      while j >= 0 && buckets[j] > tmp
        buckets[j+1] = buckets[j]
        j -= 1
      end
      buckets[j+1] = tmp
    end
  end
  return buckets
end

def bucket_sort(numbers : Array(Int32))
  num = numbers.size
  max_num = numbers.max
  size = max_num // num
  buckets = [] of Array(Int32)
  
  (0...size).each do
    buckets << Array(Int32).new
  end

  numbers.each do |element|
    i = element //size
    if i != size
      buckets[i] << element
    else
      buckets[size-1] << element
    end
  end

  (0...size).each do |i|
    insertion_sort(buckets[i])
  end

  return buckets.flatten

end

numbers = PrepData.new.show_input_data

elapsed_time = Time.measure do 
  puts bucket_sort(numbers)
end

puts "Time ==> #{elapsed_time}"
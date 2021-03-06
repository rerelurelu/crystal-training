require "./prep_data"

def shaker_sort(numbers)
  num = numbers.size - 2
  swapped = true
  limit_head = 0
  limit_tail = num

  while swapped
    swapped = false

    # forward
    limit_head.upto(limit_tail) do |i|
      if numbers[i] > numbers[i+1]
        numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
        swapped = true
      end
    end
    break if !swapped

    # reverse
    swapped = false
    limit_tail -= 1

    limit_tail.downto(limit_head) do |i|
      if numbers[i] > numbers[i+1]
        numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
        swapped = true
      end
    end
    limit_head += 1
  end
  return numbers
end

numbers = PrepData.new.show_input_data 

elapsed_time = Time.measure do
  puts shaker_sort(numbers)
end

puts "Time ==> #{elapsed_time}"
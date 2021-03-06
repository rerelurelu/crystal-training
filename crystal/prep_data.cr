class PrepData
  def create_numbers
    numbers = [] of Int32
    elements_number = rand(8..10)
  
    (0..elements_number).each do
      numbers << rand(1000)
    end
    return numbers
  end

  def show_input_data
    numbers = create_numbers
    puts "original"
    puts numbers
    puts "sorted"
    return numbers
  end

end
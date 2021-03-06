class PrepTestData
  def create_numbers
    numbers = [] of Int32
  
    (0...5).each do
      numbers << rand(10)
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
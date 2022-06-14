def roman_to_int(s)
  roman_nums = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
  }
  
  string = s.split("")    
  num_values = []
  string.each do |char|
      num_values << roman_nums[char]
      p num_values
  end
  
  total = 0
  num_values.each_with_index do |num, index|
      if num_values[index + 1] && num >= num_values[index + 1]
          total += num 
      else
          total -= num 
      end
  end
  
  total
end

p roman_to_int("MCMXCIV")
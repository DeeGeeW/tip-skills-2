# def roman_to_int(s)
  # roman_nums = {
  #     "I" => 1,
  #     "V" => 5,
  #     "X" => 10,
  #     "L" => 50,
  #     "C" => 100,
  #     "D" => 500,
  #     "M" => 1000
  # }
  
#   string = s.split("")    
#   num_values = []
#   string.each do |char|
#       num_values << roman_nums[char]
#       p roman_nums[char]
#   end
  
#   total = 0
#   num_values.each_with_index do |num, index|
#     if num_values[index + 1] && num >= num_values[index + 1]
#         # p total
#         p num
#         total += num
#         # p total
#         p num
        
#     else
#         total -= num
#     end
#   end
  
#   total
# end
# p roman_to_int("MCMXCIV")
# M
# C 1000 
# M 900
# X 1900
# C 1890
# I 1990
# V 1984

def roman_to_int(s)
   i = 0
   count = 0
  roman_nums = {
          "I" => 1,
          "V" => 5,
          "X" => 10,
          "L" => 50,
          "C" => 100,
          "D" => 500,
          "M" => 1000
      } 
      while true
      if roman_nums[s[i]] >= roman_nums[s[i + 1]]
        count += roman_nums[s[i]]
        if (i + 1) == s.length - 1
          count += roman_nums[s[i + 1]]
          return count
          break
        end
        
      else
        count -= roman_nums[s[i]]
        if (i + 1) == s.length - 1
          count += roman_nums[s[i + 1]]
          return count
          break
        end
      end
      i += 1
    end
  end
end

p roman_to_int("MCMXCIV")
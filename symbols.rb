def correct_symbols(s)
    curly_o = 0
    curly_c = 0
     
    parenthesis_o = 0
    parenthesis_c = 0
     
    square_o = 0
    square_c = 0
    i = 0
    while i < s.length
      if s[i] == "{"
        curly_o += 1
      elsif s[i] == "}"
        curly_c += 1
      elsif s[i] == "("
        parenthesis_o += 1
      elsif s[i] == ")"
        parenthesis_c += 1
      elsif s[i] == "["
        square_o += 1
      elsif s[i] == "]"
        square_c += 1
      else 
        return "NOT VALID"
      end
      i += 1
    end
    if curly_o == curly_c && parenthesis_o == parenthesis_c && square_o == square_c
     p "Valid"
    else
      p "Not Valid"
    end
    # p curly_o
    # p curly_c
    # p parenthesis_o
    # p parenthesis_c
    # p square_o
    # p square_c 
  end

 correct_symbols("(]")
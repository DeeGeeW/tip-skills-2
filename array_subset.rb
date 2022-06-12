# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false


def determine(array)
  array2 = [6, 3, 7]
  i = 0
  count = 0
  while i < array.length
    f = 0
    while f < array2.length
      if array[i] == array2[f]
        count += 1
      end
      f += 1
    end
    i += 1
  
    
  end
  if count == 3
    p "true"
  else
    p "false"
  end

end

determine([1, 2, 3, 4, 5, 6])
# A given array has one pair of duplicate values. Return the first duplicate value.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [5, 2, 9, 7, 2, 6]
# Output: 2

def duplicate(array)
  i = 0
  output = 0
  while i < array.length
    count = 0
    f = 0
    while f < array.length
      if array[i] == array[f]
        count += 1
      end
      f += 1
      if count == 3
        output += 1
      end
    end
    i += 1
  end
  p output
end

duplicate([5, 2, 9, 7, 2, 6])
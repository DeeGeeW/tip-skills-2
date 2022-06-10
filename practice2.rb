
# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.

def common_p(array)
  i = 0
  common = ""
  while i < array.length
    if array[0][i] == array[1][i] && array[0][i] == array[2][i]
      common << array[0][i]
      i +=1
    else
      break
    end
  end
  return common

end

p common_p(["flower","flow","flight"])
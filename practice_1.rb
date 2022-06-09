# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]

# 
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# Input: ["z", "y", "x"]
# Output: ["zy", "zx", "yz", "yx", "xz", "xy"]

# Input: ["cv", " ", "12"]
# Output: ["cv ", "cv12", " cv", " 12", "12cv", "12 "]



## create function evrey_other
## create index while loop to go through array
# create a second index to go through array w/o adding current string
## create a new empty array called new_array
##shovel each string that is not itself in to new array

def every_other(array)
  i = 0
  new_array = []
  while i < array.length ##
    current = array[i]
    
    f = 0
    array.each do
      
      if array[f] != current
        new_array << current + array[f]
      end
      f += 1
    end
    i += 1
  end
  return new_array
end

p every_other(["a", "b", "c", "d"])
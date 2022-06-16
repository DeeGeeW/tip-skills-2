def search_range(nums, target)
  # nums = [5,7,7,8,8,10]
  # target = 8
  output = []
  i = 0
  nums.each do 
      if nums[i] == target
          output << i
      end
      i += 1
  end
  p output
          
end
search_range([-15,-32], -32)
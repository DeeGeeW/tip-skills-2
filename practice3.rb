# Given an array of social media posts and a hash of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

# [
# {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]

# [
#   {title: 'Me Eating', submitted_by: 200, likes: 1549},
#   {title: 'i never knew ', submitted_by: 900, likes: 3},
#   {title: 'best sel', user_id: 100, likes: 1092},
#   {title: 'Mondays ar', submitted_by: 222, likes: 644}
#   ]


# And this hash of users (the key is the id number and the value is the user's real name):

# users = {403 => "Aunty Em", 231 => "Joelle P.", 900 => "Lyndon b", 100 => "Patti."}

# users = {222 => "Aunty ", 200 => "Joelle ", 989 => "Lyndon Johnson", 111 => "Patti Q."}

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

## create function called convert_user
## create index to go through array of hashes to grab submitted_by number
# create a new empty array of hashes
# create new empty hash
# compare subbitted by number with hash of users through if else conditional
## return new array of hashes

def convert(array)
  i = 0
  new_hash = {}
  new_array = []
  users = {403 => "Aunty Em", 231 => "Joelle P.", 900 => "Lyndon b", 100 => "Patti."}
  users.each do |k, v|
    while i < array.length
      if k == array[i][:submitted_by]
        new_hash[:submitted_by] = v
        value = v
        
        # new_hash[array[i]] = value
        # p new_hash
      end
      # if array[i][submitted_by:] == k
      #   value = k
      #   p value
      # end
      i += 1
    end
  end


        
      
    
end

convert([
  {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
  {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
  {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
  ])

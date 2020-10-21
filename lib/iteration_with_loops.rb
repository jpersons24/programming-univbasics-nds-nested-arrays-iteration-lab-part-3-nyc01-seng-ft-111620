mixed_data = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]



def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  count = 0
  all_strings = [] # variable set to empty array

  while count < src.length do # loop using while

    inner_count = 0 # inner_count variable set to 0
    strings = [] # strings variable set to empty array
    while inner_count < src[count].length do # loop using while
      if src[count][inner_count].class == String # is given element has a class equal to String
        strings << src[count][inner_count] # shovel that element in to strings array
      end
      inner_count += 1 # increase inner_count by 1
    end
    all_strings << strings # shovel strings array into all strings array
    count += # increase count by 1
  end
  p all_strings.join(' ') # combine all string inside all_string array to one string using .join method
end

# join_nested_strings(mixed_data)

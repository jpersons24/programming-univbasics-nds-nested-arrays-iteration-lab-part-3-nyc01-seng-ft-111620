mixed_data = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]



def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  count = 0
  all_strings = []

  while count < src.length do

    inner_count = 0
    strings = []
    while inner_count < src[count].length do
      if src[count][inner_count].class == String
        strings << src[count][inner_count]
      end
      inner_count += 1
    end
    all_strings << strings
    count += 1
  end
  all_strings.join(' ')
  p all_strings
end

join_nested_strings(mixed_data)

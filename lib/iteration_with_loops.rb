def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  row_index = 0
  string_array = []
  while row_index < src.size
    inner_index = 0 
    while inner_index < src[row_index].size
      if src[row_index][inner_index].class == String
        string_array << src[row_index][inner_index]
      end
      inner_index += 1
    end
    row_index += 1
  end
  string_array.join(" ")
end
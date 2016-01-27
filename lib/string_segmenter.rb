def segment_string(str)

dictionary = %w(one two three how now brown cow unique new york chicken cat horse dog)

str_arr = str.split("")
flux_arr =  Array.new
final_arr = Array.new

str_arr.each do |letter|
  flux_arr << letter
  if dictionary.include?(flux_arr.join)
    final_arr << flux_arr.join
    flux_arr = Array.new
  else
  end
end

return final_arr

end

=begin Brad's repl.it logic
  
dictionary = %w(abc xyz) #=> ["abc", "xyz"]
str = "abcxyz"
str_arr = str.split("") #=> ["a", "b", "c", "x", "y", "z"]
flux_arr = Array.new
final_arr = Array.new

str_arr.each do |letter|
    flux_arr << letter # "a" then "a","b" then etc...
    if dictionary.include?(flux_arr.join)
        final_arr << flux_arr.join
        flux_arr = Array.new #reverts back to an empty Array since we want to flush the matched word
    else
    end
end
final_arr # => ["abc", "xyz"]

=end
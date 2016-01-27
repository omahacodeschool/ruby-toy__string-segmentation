require_relative 'dictionary'

def segment_string(str)
  characters = str.chars
  new_word = [ ]
  word_arr = [ ]
  
  characters.each do |x|
  new_word << x
if valid_word?(new_word.join) == true
  word_arr << new_word.join
  new_word = [ ]
  return word_arr
  end
end
end

segment_string('iloveyou')

#my_array.each_with_index do |item, index|
    #if index == 0
        # do something with the first item
    #end


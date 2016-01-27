require_relative 'dictionary'

def segment_string(str)
  characters = str.chars
  new_word = []
  word_arr = []
  
  new_word << characters.shift
  valid_word?(new_word.join) == true
  word_arr << new_word.join
  new_word = []
  return word_arr

end

segment_string('iloveyou')


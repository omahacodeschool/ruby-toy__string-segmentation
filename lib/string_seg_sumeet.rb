require_relative 'Dictionary'

def segment_string(str)
  puts "BEGINNING STRING SEGMENTATION FOR '#{str}'"

  len = str.length

  i_last_real_word = 0
  i = 0

  skip_counter = 0

  words = {}

  
  while i <= len do
    prefix = str[i_last_real_word...i]
    
    if valid_word?(prefix)
      if skip_counter > 0
        skip_counter -= 1
      else
        words[i] = prefix
        i_last_real_word = i
      end
    end

    
    if (i == len) && !valid_word?(prefix)
      last_word_index = words.keys.sort.last
      words.delete(last_word_index)
      new_last_word_index = words.keys.sort.last

      if new_last_word_index.nil?
        i_last_real_word = 0        
        i = 0
      else
        i_last_real_word = new_last_word_index
        i = i_last_real_word
      end
      skip_counter += 1
    end

    i +=1
  end
  
  return words.values
end

puts segment_string("ilovepuzzles")

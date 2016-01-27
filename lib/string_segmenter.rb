require_relative 'dictionary'

def segment_string(str)
  characters = str.chars
  puts "characters are now #{characters}"

  characters.length
  new_word = [ ]
  collected_words = { }
  i = 0
  danglers = i
  skip_counter = 0

  
  while characters.length > i 
    new_word << characters.shift
      if valid_word?(new_word.join) == true
        #collected_words.inject(new_word.join)  #figure out how to store in hash
          if danglers = false
          new_word = [ ]
            if danglers = true 
              skip_counter = 1
              erase the the dangling characters
                call the key of the last word
                  while characters.length > i 
                    new_word << characters.shift
                      if valid_word?(new_word.join) == true
                        collected_words.inject(new_word.join)
                          if word is already in hash reset skip_counter 
                          end
                      end
                  end
            end
          end
      end
  end    
  return collected_words
  
end

segment_string('ilovepuzzles')




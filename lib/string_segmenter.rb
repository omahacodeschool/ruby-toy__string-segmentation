require_relative 'dictionary'

def segment_string(str)
  characters = str.chars
  characters.length
  new_word = [ ]
  collected_words = { }
  i = 0
  #skip_counter = 0

  
  while characters.length > i 
    new_word << characters.shift
      if valid_word?(new_word.join) == true
        collected_words[new_word] = i
        new_word = [ ]
      end
  end
          
  return collected_words
  
end

puts segment_string('ilovepuzzles')



          if valid_word?(new_word.join) == false
                danglers << new_word
                  if danglers == true 
                    skip_counter + 1
                    erase the the dangling characters #slice?
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
  end  
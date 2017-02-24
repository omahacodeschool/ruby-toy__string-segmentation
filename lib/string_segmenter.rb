require_relative 'dictionary'

def segment_string(str)
  characters = str.chars
  characters.length
  
  word_build = [ ] 
  collected_words = {}

  start = 0
  #i_last_real_word = 0
  e = 0
  #i = 0
  skip_flag = false
  dangler = [ ]
  #skip_counter = 0

  
  while e < characters.length 
    word_build = characters[start..e].join
    #prefix = str[i_last_real_word...i]
      
    if valid_word?(word_build)
    #if valid_word?(prefix)
      if skip_counter > 0
      skip_counter -= 1
    else
      words[i] = collected_words
      start = i
        collected_words << Hash[word_build => e]
        start = e + 1
      end
    end  
    e += 1 #loop
  end   
  return collected_words

end

puts segment_string('ilovepuzzles')
 
  #when skip_flag == true
      #redo 
    #skip_counter +=  1
  #if skip_counter == 13
  #  skip_flag = true
  #end

  #while skip_flag == true
   # word_build = new_str[step_counter..e].join
    #if valid_word?(word_build)
  #end


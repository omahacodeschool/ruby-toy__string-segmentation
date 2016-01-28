require_relative 'dictionary'

def segment_string(str)
  characters = str.chars
  characters.length
  word_build = [ ]
  word_build_two = [ ]
  word_build_three = [ ] 
  collected_words = [ ]
  start = 0
  e = 0
  skip_flag = false
  dangler = [ ]
  word_join = ''
  #skip_counter = 0

  
  while e < characters.length 
    word_build = characters[start..e].join
      
    if valid_word?(word_build) == true
      if skip_flag == false
        collected_words << word_build
        start = e + 1
      end
    else
      dangler << word_build
    end  
    e += 1 #loop
  end   

  word_build_two << dangler.pop
  word_build_three << collected_words.pop
  word_join = word_build_three.join + word_build_two.join  
  
  if valid_word?(word_join) == true
    collected_words << word_join
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


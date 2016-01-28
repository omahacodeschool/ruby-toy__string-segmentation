require_relative 'dictionary'

def segment_string(str)
  characters = str.chars
  characters.length
  word_build = [ ]
  collected_words = [ ]


  start = 0
  e = 0
  skip_counter = 0
  skip_flag = false
  str = ''

  
  while e <= characters.length 
    word_build = characters[start..e].join
      
    if valid_word?(word_build) == true
      if skip_flag == false
        collected_words << word_build
      else skip_flag == true
      end
      start = e + 1
    else
      
      #new_diction << collected_words.to_s 
      
    end 
    e += 1 #loop
  end   
  #when skip_flag == true
      #redo 
    #skip_counter +=  1
  #if skip_counter == 13
  #  skip_flag = true
  #end

  #if skip_flag

  return collected_words
end

puts segment_string('frostbitehuman')

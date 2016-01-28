require_relative 'dictionary'

def segment_string(str)
  characters = str.chars
  characters.length
  word_build = [ ]
  collected_words = [ ]
  i = 0
  #skip_counter = 0

  puts "STARTING LOOP"
  while i <= characters.length 
    word_build = characters.take(i).join
        puts "BUILDING WORD"
        if valid_word?(word_build) == true
          collected_words << Hash[word_build => i]
        end
          
    i += 1 
    word_build =[ ]
  end
          
  return collected_words
  
end

puts segment_string('ilovepuzzles')


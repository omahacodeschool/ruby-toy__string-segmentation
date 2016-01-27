require_relative 'dictionary'

def segment_string(str)
  puts "STARTING!"

  characters = str.to_s.split("")
  puts "characters are #{characters}"

  char_evaluation = []
  possible_words = []
  skip_counter = 0

  puts "About to loop..."
  until characters.empty?
    char_evaluation << characters.shift

    puts "Just shifted characters."
    puts "Now char_evaluation is #{char_evaluation}"
    puts "and characters is #{characters}"

    test = char_evaluation.join
    if valid_word?(test) == true
     puts "THATS A WORD" 
      possible_words<< char_evaluation.join
      char_evaluation = []
    end

    if valid_word?(test) == false && characters.empty?
    
    puts "NOW THIS IS RELEVENT"
      
      skip_counter = skip_counter + 1
      x = skip_counter
      possible_words[x]<< char_evaluation.shift
      puts "possible_words is now #{possible_words}" 
      test = possible_words.join
      if valid_word?(test) == true  
      possible_words<< char_evaluation.join
      char_evaluation = []
      end
      puts "DID IT"
    end
  end

  return possible_words
end

puts segment_string("catdoghamper")

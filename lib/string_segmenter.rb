require_relative 'dictionary'

def segment_string(str)
  puts "STARTING!"

  characters = str.to_s.split("")
  puts "characters are #{characters}"

  char_evaluation = []
  possible_words = []
  answer = []
  skip_counter = -1

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
      until char_evaluation.empty?
        puts "problem_word = #{possible_words[x]}"
        tester_array = possible_words[x].dup
        tester_array<< char_evaluation.shift
        test = tester_array.to_s
          if valid_word?(test) == true  
            puts "FOUND YOU MOTHERFUCKER #{tester_array}"
            possible_words[x] = tester_array
            char_evaluation = []
          else skip_counter = skip_counter + 1
          end
      
      end
    end
  end
  puts possible_words.to_s
end

puts segment_string("catshitplaying")

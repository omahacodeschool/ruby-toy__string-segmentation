require_relative 'dictionary'

def segment_string(str)
  puts "STARTING!"

  characters = str.to_s.split("")
  puts "characters are #{characters}"

  char_evaluation = []
  possible_words = []
  leftovers = []
  otherplace = []
  skip_counter = -1

  puts "About to loop..."
  until characters.empty?
    characters_clone = characters
    leftovers << characters_clone.pop
    char_evaluation = characters_clone

    puts "Just deleted characters."
    puts "Now char_evaluation is #{char_evaluation}"
    puts "and characters is #{characters}"
    puts "leftovers is #{leftovers}"

    test = char_evaluation.join
    if valid_word?(test) == true
     puts "THATS A WORD" 
      possible_words<< char_evaluation.join
      characters_clone=characters
    end
    
    until leftovers.empty?
    characters << leftovers.pop
    leftovers_clone = leftovers
    otherplace << leftovers_clone.pop
    char_evaluation = leftovers_clone

    puts "Just deleted characters."
    puts "Now char_evaluation is #{char_evaluation}"
    puts "and characters is #{characters}"
    puts "leftovers is #{leftovers}"

    test = char_evaluation.join
      if valid_word?(test) == true
      puts "THATS A WORD" 
      possible_words<< char_evaluation.join
      characters_clone=characters
      end
    end
  end
  
  puts possible_words.to_s
end

puts segment_string("playcatbutt")




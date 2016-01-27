require_relative 'dictionary'

def segment_string(str)
  characters = str.to_s.split("")
  char_evaluation = []
  possible_words = []
  answer = []
  skip_counter = 0
  until characters.empty?
    char_evaluation << characters.shift
    test = char_evaluation.join
    if valid_word?(test) == true  
      possible_words<< test.dup
      char_evaluation = []
      leftovers = characters.dup
    end
    if valid_word?(test) == true && skip_counter != 0
      x = skip_counter
      until leftovers.empty?
        possible_words[x].to_s.split""<< leftovers.shift
        test = possible_words.join
        if valid_word?(test) == true  
        possible_words<< test.dup
        char_evaluation = []
        leftovers = characters.dup
        end
      end
    end
    if leftovers.nil?
      puts "yay"
      else skip_counter = +1
      end
    end
    return possible_words
  end

puts segment_string("catyarnpoppertrashhamper")

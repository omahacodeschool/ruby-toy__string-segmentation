require_relative 'dictionary'

def segment_string(str)
  characters = str.to_s.split("")
  words = []
  while characters.any?
    puts "characters remaining: #{characters}"
    leftovers,possible_words = find_words(words,characters)
    characters = leftovers
    puts "characters remaining: #{characters}"
    if leftovers.any?
      new_word, leftovers = leftovers_test(possible_words[-1],leftovers)
      if new_word != nil
        possible_words[-1] = new_word
      end
    end
  end
  puts possible_words.to_s
end

def find_words(words, characters)
  char_evaluation = []
  #array stores characters until they are established as words in dictionary
  characters_arr = characters.dup
  until characters_arr.empty? #until all the char are reviewed w no leftovers
    char_evaluation << characters_arr.shift #the letters are put one by one into array
    test1 = char_evaluation.join #a word is formed from the array
    if valid_word?(test1)  #once the formed word matches dictionary
      puts "found a word! #{test1}"
      words << test1 #that joined word is stored away
      char_evaluation = [] #the evaluation array is emptied   
    end
  end
  puts "words: #{words} | leftovers: #{char_evaluation}"
  return char_evaluation, words
end

def leftovers_test(last_word,leftovers)
  puts "starting leftovers test" 
  possiblelongword = last_word.split("") #test last word 
  until leftovers.empty? #until all the chars are reviewed 
    possiblelongword << leftovers.shift
    puts possiblelongword.join
    longwordtest = possiblelongword.join 
    if valid_word?(longwordtest)
      puts "found a word! #{longwordtest}"
      return longwordtest,leftovers
    end
  end
end

segment_string("catshitplayeringdog")




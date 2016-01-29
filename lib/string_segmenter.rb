require_relative 'dictionary'

def find_words(characters_arr)
  char_evaluation = []
  #array stores characters until they are established as words in dictionary
  words = [] 
  #array stores words that have been established in the string
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

def segment_string(str)
  characters = str.to_s.split("")

  leftovers,possible_words = find_words(characters)
  
  while leftovers.any?
    puts "starting leftovers test"    
    clone = leftovers.dup #makes a second list of leftover letters
    possiblelongword = possible_words[-1].split("") #test last word 
    until clone.empty? #until all the chars are reviewed 
      possiblelongword << clone.shift
      puts possiblelongword.join
      gets
      longwordtest = possiblelongword.join 
      if valid_word?(longwordtest)
        puts "found a word! #{longwordtest}"
        possible_words[-1] = longwordtest
        puts "words: #{possible_words} | leftovers: #{clone}"
        leftovers = clone
      end
    end
    leftovers,new_words = find_words(leftovers)
    possible_words = possible_words + new_words
  end

  puts possible_words.to_s
end

segment_string("catplayeringdog")




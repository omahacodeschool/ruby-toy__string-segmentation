require_relative 'dictionary'

def segment_string(str)
#establish the empty arrays
  characters = str.to_s.split("")
#array of string divided into individual characters
  char_evaluation = []
#array stores characters until they are established as words in dictionary
  possible_words = []
#array stores words that have been established in the string
  leftovers = []
#array stores any characters that have not been assigned..."danglers"
  i = 0
#establishes integer as 0--this is the skip counter for dummies

#next if??????

  until characters.empty? && leftovers.empty? #until all the char are reviewed w no leftovers

    char_evaluation << characters.shift #the letters are put one by one into array
    test1 = char_evaluation.join #a word is formed from the array
    if valid_word?(test1) == true  #once the formed word matches dictionary
    puts "found a word! #{test1}"
     possible_words<< char_evaluation.join #that joined word is stored away
     char_evaluation = [] #the evaluation array is emptied   
     i = i+ 1 #the count of words goes up by one
    end

  leftovers = characters.dup

    puts "initial leftovers = #{leftovers}"
    if leftovers.any?  && i>0
    puts "starting leftovers test"    
      clone = leftovers.dup #makes a second list of leftover letters
      possiblelongword = possible_words[-1].split("") #test last word 
        until clone.empty? #until all the chars are reviewed 
        possiblelongword << clone.shift 
        longwordtest = possiblelongword.join 
          if valid_word?(longwordtest) == true
          possible_words[-1] = longwordtest
          puts "at this point leftovers = #{leftovers}"
          end
        end
      leftovers = clone
      clone = []
      puts "shitty leftovers = #{leftovers}" #this needs to NOT HAPPEN unless it's a new word??
    end
  end
puts i
puts possible_words.to_s
end

segment_string("catplayeringdog")




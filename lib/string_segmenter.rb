require_relative 'dictionary'

def segment_string(str)
  i = 0 #Sets our count variable for while loop
  index = -1 #This sets the variable we're using to anchor our word search
  cut = 1 #This variable gradually increases to run the test string against the dictionary
  arr = [] #The final array into which our words will be displayed

  if valid_word?(str) #this calls the dictionary method to test if str is a word.
    arr << str #adds the valid word string into the array

  else #For complex scenarios
    #puts "str is not a word, so doing this the hard way"
    while i < str.length #This is the beginning of our loop
      #puts "-----BEGINNING LOOP-----"
      #puts "i is #{i}"
      #puts "index is #{index}"
      #puts "cut is #{cut}"

      test_word = str[index, cut] #This creates the variable we'll be passing into our valid word test.
      #puts "test word is #{test_word}"

      if valid_word?(test_word) #If the test word is valid do the following
        #puts "#{test_word} is a valid word! Adding it to arr"

        arr << test_word #Adds test_word to final array if it passed test
        #puts "array is #{arr}. Incrementing values"

        index -= 1 #Moves anchor to the left by one
        #puts "index is now #{index}"
        cut = 1 #Resets the number of letters to cut off
        i += 1 # Advances loop count by 1
        #puts "i is now #{i}"

      else
        #puts "test_word is not a word :-( Moving on..."
        index -= 1 #Moves anchor to the left by one
        #puts "index is now #{index}"
        cut += 1 #Cuts one additional character.
        #puts "cut is now #{cut}"
        i += 1 #Advances loop count by 1
        #puts "i is now #{i}"
      
      end #ends the if/else loop
    end #ends while loops
  end #end if/else
  arr.reverse #displays array in reverse in order to satisfy "left to right" order.
end #Ends defining the "segment_string(str)"

puts segment_string("onetwothree")

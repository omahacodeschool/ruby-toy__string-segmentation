require_relative 'dictionary' #calls the dictionary to put help run the following method 

def segment_string(str)
  
  real_words = []#create an empty array for the final answer to be stored in
  starting_point = 0 #starting point of the part of string to check
  ending_point = 0 #ending point of part of string to check
  lc_str = str.downcase #lowercase any string entered
  number_of_characters = lc_str.length #get the length of the lowercased string


  while ending_point <= number_of_characters do #while the ending point of the range of the string is not yet greater than or equal to the number of characters in the string
    part_of_str = lc_str[starting_point..ending_point] #call the range of the string you're checking "part_of_string". 
    puts "Checking #{part_of_str}" #this tells you the part of the string you're running

    if valid_word?(part_of_str) #if part_of_string is a valid word
      puts "#{part_of_str} IS a valid word!"  #put that part_of_string on the screen and tell me it IS a valid word!
      real_words << part_of_str #push part of string to real words array
      end_point = starting_point +1
    else #otherwise if part_of_str is NOT a valid word
      puts "#{part_of_str} is NOT a valid word :(" #put that part_of_string on the screen and tell me it is NOT a valid word frowny face
    end
  end

  while ending_point == number_of_characters # if end of the line, ending point IS greater than or equal to number of characters
    if number_of_characters == real_words.length #if number_of_characters in the string is equal to the length of the real_words array
      puts "Success all the letters have been used!!!"
    else #if false 
      puts "ALERT THERE IS DANGLER!!!!"
    end
  end

  return real_words
end


# while i <= lc_str.downcase.length do
#  +    x = lc_str[end_point..i]
#  +    if valid_word?(x)
#  +      final << x
#  +      end_point = i + 1
#  +    end
        
#  -x=str.slice(0..i+=1)     +    i += 1
#  -  Until True     +  end
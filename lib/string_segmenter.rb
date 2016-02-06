require_relative 'dictionary' #calls the dictionary to put help run the following method 

def segment_string(str)# beginning of segment_string method
    puts "BEGIN" #display

    len = str.length #variable for how many characters are in string
    starting_point = 0 #starting position to check in string
    ending_point = 0 #ending position to check in string

    skip_counter = 0 #counter
    
    words = {} #hash to store found words

    puts "LOOP" #display
    while ending_point <= len do #while ending position of string is not yet equal to how many characters are in string
      puts "CHECKING LETTERS #{starting_point} until #{ending_point}" # Display

      range = str.downcase[starting_point...ending_point] #lowercase the string, find the strings starting point and ending point then call those points and everything between a range
      puts "IS '#{range}' a word?" #display

      if valid_word?(range) #use valid_word method to see if range is a word
        puts "YES" #display

        if skip_counter > 0
          puts "SKIP IN EFFECT"
          puts "DISABLED SKIP FOR NEXT WORD"
          skip_counter -=1
        else
          puts "ARCHIVING WORD" #display
          words[ending_point] = range #save range colelcted to words hash with ending position value of range set to key
          puts "WE NOW HAVE #{words} COLLECTED" #Display

          puts "ADVANCING starting_point to #{ending_point}" #Display
          starting_point = ending_point #move starting position up to the last ending position
        end
      end

      if (ending_point == len) && !valid_word?(range) #if ending position IS == length of characters in string and range is NOT a valid word
        puts "DANGLER" #display
        puts "REMOVE LAST WORD" #display
        last_word_index = words.keys.sort.last #sort the keys inside the words hash and then call the last key last_word_index
        words.delete(last_word_index) #delete the value and key for last_word_index

        puts"UPDATE ON WORDS ITS NOW #{words}" #display
        new_last_word_index = words.keys.sort.last #sort the keys inside the words hash and then call the last key new_last_word_index

        if new_last_word_index.nil? # if new_last_word_index IS NOTHING
          puts "EMPTY NOW" #display
          starting_point = 0 #reset starting point to 0
          ending_point = 0 #reset endingpoint to 0
        else
          starting_point = new_last_word_index #if new_last_word_index is NOT nothing
          puts "STARTING FROM CHARACTER #{starting_point}" #display

          ending_point = starting_point #move ending position back to current starting position
        end

        puts "SKIP IS IN EFFECT" # display
        skip_counter += 1 #increase counter by 1 and reassign value
      end

      ending_point += 1 #increase ending position by 1 and reassign value
    end

    puts "LOOP COMPLETE" #display
    return words.values #returns the values only from words hash
  end
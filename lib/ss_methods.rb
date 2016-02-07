require_relative 'dictionary' #calls the dictionary to put help run the following method 
class AllTheWords
  # Displays startup txt, sets all variables
   def initialize(str) 
    puts "BEGIN" 
    $str = str
    $len = $str.length 
    $starting_point = 0 
    $ending_point = 0 
    $skip_counter = 0 
    $words = {} 
  end

  #while ending position of string is not yet equal to how many characters are in string
  def not_reached_end_of_string
    $ending_point <= $len
  end

  # Downcases string, calls strings starting point, ending point, and everything between "range"
  def prepare_string_range
    puts "CHECKING LETTERS #{$starting_point} until #{$ending_point}" 
    $range = $str.downcase[$starting_point...$ending_point] 
    puts "IS '#{$range}' a word?"
  end

  def skip_counter_still_enabled
    $skip_counter > 0
  end


  def disable_skip_counter
    puts "SKIP IN EFFECT"
    puts "DISABLED SKIP FOR NEXT WORD"
    $skip_counter -=1
  end


  # Saves range collected, moves starting position of new range up to ending postion of last found word
  def archive_found_word
    puts "ARCHIVING WORD" 
    $words[$ending_point] = $range 
    puts "WE NOW HAVE #{$words} COLLECTED" 
    puts "ADVANCING $starting_point to #{$ending_point}" 
    $starting_point = $ending_point
  end  

  # Defines a dangler scenario
  def dangling_letters_exist
    ($ending_point == $len) && !valid_word?($range)
  end

  #sort the keys inside the words hash and then call the last key last_word_index
  #delete the value and key for last_word_index
  def delete_last_found_word
    puts "DANGLER ALERT!!!"
    puts "REMOVING LAST WORD"
    last_word_index = $words.keys.sort.last 
    $words.delete(last_word_index) 
    puts"UPDATE ON WORDS ITS NOW #{$words}" #display
  end


  #sort the keys inside the words hash and then call the last key new_last_word_index
  def how_many_characters_left
    new_last_word_index = $words.keys.sort.last
  end


  # defines a reset of starting and ending points back to 0
  def empty_reset
    puts"EMPTY NOW"
    $starting_point = 0
    $ending_point = 0
  end

  #makes new starting point == how many characters are left
  #move ending position back to current starting position
  def move_back_range
    $starting_point = how_many_characters_left 
    puts "STARTING FROM CHARACTER #{$starting_point}"
    $ending_point = $starting_point 
  end 


  #increase counter by 1 and reassign value
  def enable_skip_counter
    puts "SKIP IS IN EFFECT" 
    $skip_counter += 1 
  end


  def advance_ending_point
    $ending_point += 1
  end

  def find_the_words
    puts "LOOP" 
    while not_reached_end_of_string
      prepare_string_range

      if valid_word?($range) 
        puts "YES"

        if skip_counter_still_enabled
          disable_skip_counter
        else
          archive_found_word
        end
      end

      if dangling_letters_exist 
        delete_last_found_word
        how_many_characters_left

        if how_many_characters_left.nil? 
          empty_reset

        else
          move_back_range
        end

        enable_skip_counter
      end

      advance_ending_point
    end
  end

  def here_are_the_words
    puts "LOOP COMPLETE"
    return $words.values
  end
end

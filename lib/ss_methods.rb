require_relative 'dictionary' #calls the dictionary to put help run the following method 

class SegmentWords

  # Displays startup txt, sets all variables
  def initialize(str)
    puts "BEGIN" 
    @len = str.length 
    @starting_point = 0 
    @ending_point = 0 
    @skip_counter = 0 
    @words = {} 
  end

  # Downcases string, calls strings starting point, ending point, and everything between "range"
  def prepare_string_range
    puts "CHECKING LETTERS #{starting_point} until #{ending_point}" 
    range = str.downcase[$starting_point...$ending_point] 
    puts "IS '#{range}' a word?"
  end


  # Uses Valid_Word method to see if range is a word
  def range_is_word
    valid_word?(range) 
    puts "YES" 
  end


  def skip_counter_enabled
    skip_counter > 0
    puts "SKIP IN EFFECT"
    puts "DISABLED SKIP FOR NEXT WORD"
    skip_counter -=1
  end


  # Saves range collected, moves starting position of new range up to ending postion of last found word
  def archive_found_word
    puts "ARCHIVING WORD" 
    words[ending_point] = range 
    puts "WE NOW HAVE #{words} COLLECTED" 
    puts "ADVANCING starting_point to #{ending_point}" 
    starting_point = ending_point
  end     







end
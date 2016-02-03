require_relative 'dictionary'
require 'pry'

class StringSegmentor
  
  #gets String from user
  def get_string_from_user
    puts "\n Give me a string of words please."
    gets.chomp
  end

  #sets instance variable for String
  def set_str(x)
    @str = x
  end
  
  #sets instance variables
  def setting_instance_vars
    @len = @str.length
    @i_last_real_word = 0
    @i = 0
    @skip_counter = 0
    @words = {}
  end

  #Loops through the string
  #Passes each character into prefix starting for [0]
  def build_prefix
    @prefix = @str[@i_last_real_word...@i]
  end
  
  #Checks prefix if it's a word or not.
  def checking_dictionary_for_word_match
    valid_word?(@prefix)
  end

  #Check to see if skip counter is on. If it is, it disables it. If it's not, it adds the found word to the hash with it's index as the key.
  def disable_skip_counter
    if @skip_counter > 0
      @skip_counter -= 1
    else
      @words[@i] = @prefix
      @i_last_real_word = @i
    end
  end
  
  #Adds found word to words hash with the last characters index as the key.
  #def collect_found_word
  #  @words[@i] = @prefix 
  #end

  #advances the start point of the loop
  #def advance_start
  #  @i_last_real_word = @i
  #end

  #Discovers that the loop is ending but the last word isn't actually a word but a dangler.  
  def dangler_situation
    (@i == @len) && !valid_word?(@prefix)
  end

  # Removes last word added to the collection. 
  def remove_last_word
    @last_word_index = @words.keys.sort.last
    @words.delete(@last_word_index)
  end

  #Starts the loop again from the beginning of the string.
  def restart_loop
    new_last_word_index = @words.keys.sort.last
    if new_last_word_index.nil?
      @i_last_real_word = 0        
      @i = 0
    else
      @i_last_real_word = new_last_word_index
      @i = @i_last_real_word
    end
  end

  #sets skip counter
  def set_skip_counter
    @skip_counter += 1
  end
  
  #increase index by 1
  def increase_index
    @i +=1
  end

  #returns the values of word hash.
  def word_values
    return @words.values
  end

  def string_segmentor
    set_str(get_string_from_user)
    setting_instance_vars

    while @i <= @len do
      build_prefix
      
      if checking_dictionary_for_word_match
        disable_skip_counter
      end
        
      if dangler_situation
        remove_last_word
        restart_loop
        set_skip_counter
      end
      increase_index
    end

    binding.pry

    puts word_values
  end
  
end


     
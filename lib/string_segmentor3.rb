require_relative 'dictionary'
require 'pry'

class StringSegmentor
  
 def get_string_from_user
    puts "\n Give me a string of words please."
    gets.chomp
  end

  def set_str(x)
    @str = x
  end

  def set_instance_vars
    @len = @str.length
    @i_last_real_word = 0
    @i = 0
    @skip_counter = 0
    @words = {}
  end
    
  #Checks prefix if it's a word or not.
  #Check to see if skip counter is on. If it is, it disables it. If it's not, it adds the found word to the hash with it's index as the key.
  def checking_dictionary_for_word_match
    @prefix = @str[@i_last_real_word...@i]
    
    if valid_word?(@prefix)
      if @skip_counter > 0
        @skip_counter -= 1
      else
        @words[i] = @prefix
        @i_last_real_word = @i
      end
    end
  end

  #Discovers that the loop is ending but the last word isn't actually a word but a dangler.  
  # Removes last word added to the collection. 

  def if_dangler_situation
    if(@i == @len) && !valid_word?(@prefix)
      @last_word_index = @words.keys.sort.last
      @words.delete(@last_word_index)
    end
  end

  #Starts the loop again from the beginning of the sttring.
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

  def index_increase
    @i +=1
  end

  def words
    return @words.values
  end

  def segment_string
    
    set_str(get_string_from_user)
    set_instance_vars

    while @i <= @len do
      checking_dictionary_for_word_match
      if_dangler_situation
      restart_loop
      set_skip_counter
      index_increase
      puts words

      binding.pry
    end
  end
end


require_relative 'dictionary'

class StringSegmentor
  #Loops through the string
  def loop_thru_str
    while @i <= @len do
    end
  end

  #Passes each character into prefix starting for [0]
  def build_word
    @prefix = str[i_last_real_word...i]
  end

  #Checks prefix if it's a word or not.
  def checking_dictionary_for_word_match
    if valid_word?(@prefix)
    end
  end

  #Check to see if skip counter is on. If it is, it disables it. If it's not, it adds the found word to the hash with it's index as the key.
  def skip_counter_check
    if @skip_counter > 0
      @skip_counter -= 1
    else
      @words[i] = @prefix
      @i_last_real_word = i
    end
  end

  #Discovers that the loop is ending but the last word isn't actually a word but a dangler.  
  def if_dangler_situation
    if(@i == @len) && !valid_word?(@prefix)
    end
  end

  # Removes last word added to the collection. 
  def remove_last_word
    @last_word_index = @words.keys.sort.last
    @words.delete(@last_word_index)
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


  def segment_string(str)
    

    @len = str.length

    @i_last_real_word = 0
    @i = 0

    @skip_counter = 0

    @words = {}

    
    loop_thru_str
    build_word  
    checking_dictionary_for_word_match
    skip_counter_check
    if_dangler_situation
    remove_last_word
    restart_loop
    set_skip_counter
    index_increase

    return words.values
  end
end

#segment_string("iloveyoumagichumanlightbulbspeace")
     
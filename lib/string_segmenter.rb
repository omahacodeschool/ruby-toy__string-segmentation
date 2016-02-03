require_relative 'dictionary'

class String_Segmenter

  def segment_string

    i = 0 
    @index = -1 
    cut = 1 
    @arr = [] 

    while i < @str.length
      @test_word = @str[@index, cut]
    
      if dangler?
        @ejected_word = word_ejection
    
        if @arr.empty?
          @index = -(@ejected_word.length + 1)
          cut = (@ejected_word.length + 1)
          i = (@ejected_word.length - 2)
    
        else 
          @index = -(@arr.join.length + @ejected_word.length + 1)
          cut = (@ejected_word.length + 1)
          i = (@arr.join.length + @ejected_word.length - 1)
        end
         
      elsif valid_word?(@test_word)
        @arr.unshift(@test_word)
        cut = 1
        @index -= 1
   
      else 
        cut += 1 
        @index -= 1
         
      end 
      i += 1
    end 
    @arr
  end 
    
  def dangler?
    !valid_word?(@test_word) && -(@index) == @str.length
  end
    
  def word_ejection()
    @word_ejected = @arr.shift
    return @word_ejected
  end

  def set_str(x)
    @str = x
  end

end

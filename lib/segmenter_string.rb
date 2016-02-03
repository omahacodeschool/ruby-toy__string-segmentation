require_relative 'dictionary.rb'
class SegmentString
#
#setup defines the variables
#
    def setup
      @str = "avacadoburritohampsterscathamwords"
      @i = 0                           
      @words = []    
      @front = - 1
      @back = 1
    end
#
#verify_iterate takes letters one at a time from the end
#of the string to the beginning, when a word is verified
#its put into the words array
#
    def verify_iterate
      while @i < @str.length                
      sample = @str[@front,@back]      
        if valid_word?(sample)
          @words << sample
          @front -= 1
          @back = 1
          @i += 1      
        else
          @front -= 1
          @back += 1
          @i += 1   
        end  
      end  
    end
#
#print_words displays the words array in reverse order
#which is in the original order they were given in
#
    def print_words
      print @words.reverse
    end
#
#runner runs through the methods in order
#
    def runner
      setup
      verify_iterate
      print_words
    end
end

x = SegmentString.new
x.runner







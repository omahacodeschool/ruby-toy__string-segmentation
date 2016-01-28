require 'dictionary'

def segment_string(str)
  i = 0   
  index = -1    
  cut = 1 
  arr = []  

  if valid_word?(str)
    arr << str

  else
    while i < str.length
      test_word = str[index, cut] 
      

      if valid_word?(test_word)
        arr << test_word
        index -= 1
        cut = 1
        i += 1

      else valid_word?(test_word) == false
        index -= 1
        cut += 1
        i += 1

      end
    end
  end
  arr.reverse
end
puts segment_string("onetwothree")
require_relative 'dictionary.rb'
def segment_string(str)
  i = 0                           
  words = []    
  front = - 1
  back = 1
  
  while i < str.length                
    sample = str[front,back]
      if valid_word?(sample)
        words << sample
        front -= 1
        back = 1
        i += 1      
                       
#Its moving backwards, from the end of the string to the beggining
#
#as sample is verified that it has a word, its put into an words an array, 
#
#the back stays on until the word is done, then it goes further, and the
#
#index continues to decrease.
      else
        front -= 1
        back += 1
        i += 1   
      end
  end   
  
print words.reverse
end
segment_string("avacadoburritohampsterscathamwordsupper")





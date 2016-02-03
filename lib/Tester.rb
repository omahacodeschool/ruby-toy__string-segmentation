require_relative 'dictionary.rb'
def segment_string(str)
  i = 0   
  front = 1
  back = - 1                           
  temp = [] 
  temp2= []                          
  words = []    
#
#The iterator starts at the first character in the string,
#words are filtered through the section_of_string they are 
#
#sent to temp, that is issisted by the valid_word mod which
#in turn kicks out full verified words to the words array
#  
  while i < str.length                
    section_of_string = str[i]        
      temp << section_of_string 
      if valid_word?(temp.join) == true      
        words << temp.join  
        temp = []                                                
      else

        if i == str.length - 1
          temp2 << words[-1]
          words.pop
          temp2 << temp.join
          words << temp2.join
        end
#
#If a dangler situation occurs, the last word in the array
#that must be a prefix to a word, is put into another temp
#
#array, along with the remainder of the temp array (the danglers)
#        
        if valid_word?(temp2.join) == true
          words << temp2
          temp = []
          temp2= []
          i += 1
          front -= 1
         back = 1   
        end
      end   
      i += 1 
      front -= 1
      back = 1
  end                                      
print words
end
segment_string("avacadoburritohampster")




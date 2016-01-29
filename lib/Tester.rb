require_relative 'dictionary.rb'
def segment_string(str)
  i = 0   
  front = 1
  back = - 1                           
  temp = [] 
  temp2= []                          
  words = []    

  







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

# Finds ham
#hampsterburrito
#hamp
#hamps
#hampst
#hampste
#hampster
#hampsters 

"hampstersburrito"


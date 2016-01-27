require_relative 'dictionary.rb'
def segment_string(str)
  i = 0                               #The index
  temp = []                           #The temporary array
  words = []                          #The final product array
  while i < str.length                #The Start of the loop, when the index
    section_of_string = str[i]        #is less than the length of the string
      temp << section_of_string       #the loop continues, iterating through 
      if valid_word?(temp.join)       #the string, puting each letter into
        words << temp.join            #the temp array until it gets a valid
        temp = []                     #word, then it puts it in the 'words'
      end                             #array, the temp array is emptied, the
      i += 1                          #index is increased, and the loop keeps
                                      #going until the string length is not
  end                                 #greater than the index, finally it
  return words                        #returns the final array
end
#segment_string("avacadoburrito")

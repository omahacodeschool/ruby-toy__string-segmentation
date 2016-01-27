require_relative 'dictionary.rb'
def segment_string(str)
  i = 0
  ending_point = 1
  temp = []
  words = []

  while i < str.length do
    section_of_string = str[i]
      temp << section_of_string
      
      if valid_word?(temp.join)
        words << temp.join
        temp = []
      end  
      i += 1
  
  end
  return words
end
#segment_string("avacadoburrito")

require_relative 'dictionary'
require 'pry'

def segment_string(str)
  array = str.split("")
  result_array=[]
  new_array = []
  string2 = ""
  word = ""
  until array.empty?
    string2 += array.shift
    if valid_word?(string2)
      word = string2
      new_array = array
      until new_array.empty?
        string2 += new_array.shift
        if valid_word?(string2)
          word = string2
          array = new_array
        end
        ##look at remainder - put letters onto it until you can form valid word
        ##put last letter back onto array
      end
      result_array << word
      string2 = ""
      word = ""
    end
  end
  p result_array
end

segment_string("bluepuzzlingtrusts")
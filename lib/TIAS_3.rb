require_relative 'dictionary'
#working on not making word into string 2 if there are danglers
def segment_string(str)
  array = str.split("")
  result_array=[]
  new_array = []
  third_array = []
  string2 = ""
  string3 = ""
  string4 = ""
  word = ""
  word2 = ""
  until array.empty?
    string2 << array.shift
    if valid_word?(string2)
      word2 = string2.dup
      word = string2.dup
      new_array = array.dup
      until new_array.empty?
        string2 << new_array.shift
        if valid_word?(string2)
          word = string2.dup
          third_array = new_array.dup
        end
        third_array.each do |x|
          string3 << x
          if valid_word?(string3)
          else
            ##go back a step
            new_array.each do |x|
              string4 << x
              if valid_word?(string4) == false
              
          end
                word = word2.dup
          end
        end
      end
    end
      result_array << word
      string2 = ""
      word = ""
    end
  end
  p result_array
end

segment_string("bluesharkpuzzlingwafflestigersharkelephants")
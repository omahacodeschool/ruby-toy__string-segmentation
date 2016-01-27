require_relative 'dictionary'

def segment_string(str)
  array = str.split("")
  result_array=[]
  new_array = []
  string2 = ""
  word = ""
  until array.empty?
    string2 << array.shift
    if valid_word?(string2)
      word = string2.dup
      new_array = array.dup
      until new_array.empty?
        string2 << new_array.shift
        if valid_word?(string2)
          word = string2.dup
          array = new_array.dup
        end
      end
      result_array << word
      string2 = ""
      word = ""
    end
  end
  p result_array
end

segment_string("tigerslionswaffling")
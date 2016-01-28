require_relative 'dictionary'

def segment_string(str)
  array = str.split("")
  result_array=[]
  new_array = []
  string2 = ""
  string3 = ""
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
          until array.empty?
            string3 << array.shift
            if valid_word?(string3) == false

end
        end
      end
      result_array << word
      string2 = ""
      word = ""
    end
  end
  p string3
end

segment_string("sharkspuzzlingtrusts")
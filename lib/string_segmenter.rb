require_relative 'dictionary'

def segment_string(str)
  array = str.split("")
  result_array=[]
  string2 = ""
  word = ""
  index_to_delete = 0
  until array.empty?
    string2 << array.shift
    if valid_word?(string2)
      word = string2.dup
      array.each_with_index do |x, i|
        string2 << x
        if valid_word?(string2)
          word = string2.dup
          index_to_delete=i
        end
      end
      array.slice!(0..index_to_delete) unless index_to_delete == 0
      result_array << word
      string2 = ""
      word = ""
    end
  end
  p result_array
end

segment_string("waffletigersharklionwaffle")
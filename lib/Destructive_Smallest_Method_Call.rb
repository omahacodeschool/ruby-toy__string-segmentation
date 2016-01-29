require_relative 'dictionary'
require_relative 'sub_method_take_two'
require 'pry'

def segment_string(str)
  
  array = str.split("")
  result_array=[]
  new_array = []
  string_2_array = []
  string2 = ""
  word = ""

  until array.empty?
    string2 << array.shift

    if valid_word?(string2)
      word = string2.dup
      result_array << word
      string2 = ""
    end
  end
    if string2.length > 0
      array = string2.split("")
      #string2 = word
  end
    p result_array
  end











#     if valid_word?(string2)
#       word = string2.dup
#       result_array << word
#       string2 = ""
#     end
#   end

#     if string2.length > 0
#     #p result_array
#   #else
#   puts "Dangler Alert"

#     #array = string2.dup.split("")
#     #string2 = result_array.pop
#   #end
#     end

# p result_array


puts segment_string("wafflesblue")


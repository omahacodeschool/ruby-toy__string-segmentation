require_relative 'dictionary'
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
    next
    end
    if string2.length > 0 && valid_word?(string2) == false
    end
    array = string2.split("")
      string2 = result_array[result_array.length-1]
      result_array = result_array[0...-1]
  end





#   end

#   if string2.length == 0
#     return result_array

#   else 
#     array = string2.split("")
#     string3 = result_array.pop


    

#     until array.empty?
#       string3 << array.shift

#       if valid_word?(string3)
#         word = string3.dup
#         result_array << word
#         string3 = ""
#       end
#     end

#       if string3.length == 0
#       return result_array

#     else 
#       array = string3.split("")
#       string4 = result_array.pop

#       until array.empty?
#         string4 << array.shift

#         if valid_word?(string4)
#           word = string4.dup
#           result_array << word
#           string4 = ""
#         end
#       end

#   end
# end

       #valid_word?(string2).length > 0
       #puts "Dangler Alert"
       # string2.each_byte do |x|
       # array << x
      #end
        #array = string2[1..-1].split("")
        #word = ""
        #if valid_word?(string2)
        #  result_array << string2
         # string2 = ""
        #end
  #end
  #string2 = result_array[-1]
      #string_2_array << result_array.pop
      #string2 = string_2_array.join("")
        #puts string2
        #puts "#{word} Dangler Alert"
      #p array
      #string2 = ""
    #string2 = ""
  p result_array
end




#       until new_array.empty?
#         string2 << new_array.shift
#         if valid_word?(string2)
#           word = string2.dup
#           array = new_array.dup
#         end
#       end
#       result_array << word
#       string2 = ""
#       word = ""
#     end
#   end
#   p result_array
# end

segment_string("sharkslionsblues")



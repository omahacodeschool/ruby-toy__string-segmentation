require_relative 'dictionary'

def segment_string(str)
skip_counter = 0
string = ""
y=0
index = 0

array = str.split""
until index == array.length - 1
  string << x
  index += 1
end

p string
end


#   array.each_with_index do |x, i|
#     string << x
#     y += 1
#     if valid_word?(string)
#       word1 = string.dup
#       string = ""
#       word_array << word1
#       else skip_counter = 1
#     end
#     word1 = ""
#   end
#     #index_at_first_end = (string2.length - 1)


#   p skip_counter
# end

segment_string("sharkbluewaffletiger")
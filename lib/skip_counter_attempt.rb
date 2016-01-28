require_relative 'dictionary'

def segment_string(str)
word1 = ""
word = ""
string = ""
y=0
index = 0
string2 = ""
indexes = []
length_array = []
new_array = []
word_array = []
array = str.split""
string3 = ""
skip_counter = 0
index_at_first_end = 0
  array.each_with_index do |x, i|
    string << x
    y += 1
    if valid_word?(string)
      word1 = string.dup
      string = ""
      word_array << word1
      else skip_counter = 1
    end
    word1 = ""
  end
    #index_at_first_end = (string2.length - 1)


  p skip_counter
end

segment_string("sharkbluewaffletiger")
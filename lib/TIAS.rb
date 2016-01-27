require "pry"

def valid_word?(word)
  # Populate this array with some words of your choosing.
  dictionary = ["turtle", "blue", "train", "trust", "elephant", "waffle", "puzzle", "lion", "tiger", "bear", 'tigershark']

  # Return true if your dictionary contains `word`
  # or false if it does not.
  dictionary.include?(word)

end

str = "liontigersharklion"
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






#str="liontigerbear"
#array=str.split""
#result_array=[]
#array.each_with_index do |x, i|
#result_array << str[0..i]
#end
#word_array=[]
#after_first_find_array=[]
#result_array.each_with_index do |x, i|
#  if valid_word?(x) == true
#    result_array.shift(i+1)
#word_array << x
#word_array << [x, i]
#  word_array << [x, i]
#  end
#end
#puts result_array[i+1..-1]
#end
#end
#end
#puts result_array

#str="liontigerbear"
#array=str.split""
#result_array=[]
#array.each_with_index do |x, i|
#if valid_word?(str[0..i]) == true
#found_word=str[0..i]
#esult_array << found_word
#end
#puts result_array
#end



#str="liontigerbear"
#array=str.split""
#result_array=[]
#array.each_with_index do |x, i|
#if valid_word?(str[0..i]) == true
#found_word=str[0..i]
#puts str[0..i]
#result_array << found_word
#end
#puts result_array
#end

#identified_word=str[0..i]
#if valid_word?(str[0..i]) == true
#result_array << identified_word
#end
#puts result_array
#end

#str="liontigerbear"
#array=str.split""
#result_array=[]
#array.each_with_index do |x, i|
#if valid_word?(str[0..i]) == true
#found_word=str[0..i]
#result_array << found_word
#end
#puts result_array
#end
#Try and See

  arr = str.split(//)
  words = Array.new
  arr.each do |x|
    test_word = x
    if valid_word?(test_word.join) == false
      test_word = 
      words << x 
    else
      x =

      

str = "blueturtlehappy"
arr = str.split(//)
test_arr = Array.new
  while arr.length != 0
  arr.each {test_arr << arr.shift}
  end
puts test_arr



require "dictionary"
def segment_string(str)
arr = str.split(//)
word = Array.new
  while arr.length != 0
  arr.each {word << arr.shift}
    if valid_word?(word.join) == true
       word.join
    end
  end
end
segment_string(blueturtlehappy)
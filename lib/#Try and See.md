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



require_relative "dictionary"
def segment_string(str)
  arr = str.split(//)
  letters = []
  words = []
  
  while arr.length != 0
    #puts "arr.length is " + arr.length.to_s

    arr.length.times do
      #puts "arr.length is #{arr.length}"
      #puts "Adding first letter '#{arr[0]}' in arr to 'letters'"
      letters << arr.shift
    #end

    #puts "Okay, now 'letters' is #{letters}"
    
      
      if valid_word?(letters.join) == true
        words << letters.join
        letters = []
        #puts "Kay, now 'letters' is #{letters}"
      end
    end
  end
  puts "Okay, now 'words' is #{words}"
  return words
end
segment_string("wordssuppertrust")
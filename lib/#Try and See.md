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



  while i < arr.length  
      letters << arr[count..i]
      count += 1

      if valid_word?(letters.join) == true
        index = arr.index{|x| x==letters[-1]}
        collection.store(letters.join, index) #seems like cheating, I want count to equal the index of the last letter in the word.
        puts "Kay, now 'letters' is #{letters}"
        puts "Your collection hash is #{collection}"
        letters = []
        i += count
      else
        i += 1
      end
        puts "Now 'letters' is #{letters}"
require_relative "dictionary"
def segment_string(str)
  arr = str.split(//)
  letters = []
  collection = Hash.new
  count = 0
  i = 0
  skip_counter = 0
  
  while i < arr.length  
      letters << arr[count..i]
      count += 1

      if valid_word?(letters.join) == true
        collection.store(letters.join, count-1) #seems like cheating, I want count to equal the index of the last letter in the word.
        puts "Kay, now 'letters' is #{letters}"
        puts "Your collection hash is #{collection}"
        letters = []
        count==i
        i += 1
      else
        i += 1
        #count += 1
        #puts "Now 'letters' is #{letters}"
      end
      if letters.length >0 
        skip_counter +=1
        #count==i
        #i+=1
      end

  end

  #puts "Now 'arr' is #{arr}"
  #if arr.empty? == false
    #puts "OKay, now 'arr' is #{arr}"
    #puts "Final array should be #{arr}"
    #puts "Listen, 'new_arr' is #{new_arr}"
end


  #puts "Okay, now 'words' is #{words}"
  #puts "Okay, now 'arr' is #{arr}"
  #return words

segment_string("carpublish")

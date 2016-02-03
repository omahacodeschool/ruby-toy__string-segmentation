require_relative "dictionary"
def segment_string(str)
  arr = str.split(//)
  letters = ""
  collection = []
  range_right = 1
  temp_storage = []
  count_left = 0 
  
  while range_right < arr.length

    letters = arr[count_left..range_right].join
  
    if valid_word?(letters) == true
      temp_storage << letters 
      letters="" 

      n = range_right + 1
      while n < arr.length
        double_check = arr[count_left..n].join # e.g. "carp"

        if valid_word?(double_check) == true
          temp_storage = []
          temp_storage << double_check
        end
        n += 1
      end

      collection << temp_storage.pop
      range_right = collection.join.length
      count_left = range_right
    else
      range_right += 1
      
    end
  end
  puts collection   
end


segment_string("swimbluebirdtrustswiminglybluesharkattraction")

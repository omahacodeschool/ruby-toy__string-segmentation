def segment_string(str)
    
  str_arr = str.split(//)
  resting_arr = []
  words_arr = []
  skip = 0
  index_of_last_found_word = 0
  99.times do
       working_str_arr = str_arr[index_of_last_found_word..-1]
        working_str_arr.each do |x|
        resting_arr << x
        
          if 
            valid_word?(resting_arr.join) && skip == 0
            words_arr << resting_arr.join
            resting_arr = []
            
          elsif 
            valid_word?(resting_arr.join) && skip == 1
            skip = 0
            
            
          elsif 
            valid_word?(resting_arr.join) == false
         
            
          end
        end
       
        
        if 
          resting_arr.empty? == true
          return words_arr
          
        elsif 
          resting_arr.empty? == false
          resting_arr = []
          skip = 1
          words_arr.pop
          index_of_last_found_word = words_arr.join.split(//).length 
        end
    end    
end  



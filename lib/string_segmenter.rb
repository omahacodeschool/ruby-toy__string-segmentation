require_relative "dictionary.rb"

def segment_string(str)
start_arr = str.chars
test_arr  = Array.new
valid_arr = Array.new
i = 0

  until start_arr.empty?
  
    while start_arr.length >= i
      str_section = start_arr.take(i).join
    
        if valid_word?(str_section)
          test_arr << str_section
        end
        
      i += 1
    end
       
this_many = 0
str_loc = test_arr[0].length

    while start_arr[str_loc..-1].length >= this_many
      new_section = start_arr[str_loc..-1].take(this_many).join
      
        if valid_word?(new_section) || test_arr.length == 1
          valid_arr << test_arr.shift
          break
        end
        
      this_many += 1
    end

# LAST PIECE: Compound words
#
# must figure out how to only shift test_arr when my 2nd while loop does a 
# complete round for each element of test_arr

  #test_arr.shift 
  
    i = 0
    start_arr.shift(valid_arr[-1].length.to_i)
  end

  valid_arr
end

segment_string("speakthiswordordie")
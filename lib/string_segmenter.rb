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

    if test_arr.length == 1
        valid_arr << test_arr.shift
    elsif test_arr.length >= 1
        until test_arr.length == 1

            while start_arr[str_loc..-1].length >= this_many
                new_section = start_arr[str_loc..-1].take(this_many).join
      
                if valid_word?(new_section)
                valid_arr << test_arr.shift
                break
                end
       
                this_many += 1
            end
          valid_arr << test_arr.pop
          test_arr.clear
          break
        end 
    end

    i = 0
    start_arr.shift(valid_arr[-1].length.to_i)
  end

  valid_arr
end
require_relative "dictionary.rb"

def segment_string(str)
start_arr = str.chars
test_arr  = Array.new
valid_arr = Array.new
i = 1

  until start_arr.empty?
  
    while start_arr.length >= i
      str_section = start_arr.take(i).join
    
        if valid_word?(str_section)
          test_arr << str_section
        end
        
      i += 1
    end
       
this_many = 1
str_loc = test_arr[0].length

    if test_arr.length == 1
        valid_arr << test_arr.shift
    elsif test_arr.length >= 1
      until test_arr.length == 1

        while start_arr[str_loc..-1].length >= this_many
          new_section = start_arr[str_loc..-1].take(this_many).join
      
          if valid_word?(new_section)
            break
          end
       
          this_many += 1
        end
        test_arr.shift
        this_many = 1
        str_loc   += 1
      end
      valid_arr << test_arr.shift
    end

    i = 1
    start_arr.shift(valid_arr[-1].length.to_i)
  end

  valid_arr
end
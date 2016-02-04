require_relative "dictionary.rb"

def segment_string(str)

start_arr = str.chars
test_arr  = Array.new
valid_arr = Array.new
this_many = 1

  if str.empty?
    nil
  else
    until start_arr.empty?    
    
      while start_arr.length >= this_many
        str_section = start_arr.take(this_many).join

          if valid_word?(str_section)
            test_arr << str_section
          end  
    
        this_many += 1
      end

      this_many = 1
      str_loc = test_arr[0].length

      if test_arr.length == 1
          valid_arr << test_arr.shift
      else
        while start_arr[str_loc..-1].length >= this_many
          new_section = start_arr[str_loc..-1].take(this_many).join
            
          if valid_word?(new_section)
            valid_arr << test_arr.shift
            test_arr.clear
            break
          end
          
          this_many += 1
        end
          
        if test_arr.length > 0
          valid_arr << test_arr.pop
          test_arr.clear
        else
        end
      end
      
      this_many = 1
      start_arr.shift(valid_arr[-1].length.to_i)
    end
  end
  valid_arr
end
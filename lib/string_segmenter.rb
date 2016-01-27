require 'dictionary.rb'


def segment_string(str)

  letters = str.split(//)
  temp_array = []
  final_array = []

  index = 0
  skip_counter = 0

  letters.each do |i|
    index += 1
    temp_array.push(i)

    if valid_word?(temp_array.join)
      final_array.push(temp_array.join)
      temp_array = []
    else
      
    end
  
  end
  
  return final_array
end








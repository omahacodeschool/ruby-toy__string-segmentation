require_relative 'dictionary'
require 'pry'

def segment_string_sub(str)
      result_array = []
      if valid_word?(str)
        word = str.dup
        result_array << word
        str=""
        return "#{result_array} is my result array!"
      else
      return "#{str} is a string"
    end
  end

    
  #puts segment_string_sub("puzzlest")


  #segment_string_sub(string2)
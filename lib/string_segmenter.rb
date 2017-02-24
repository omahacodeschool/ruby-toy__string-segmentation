


# ________________________________save this one, take out "-" keep "+"___
#  require_relative 'dictionary'
#   def segment_string(str)
 
#  +  #this method should take a string of characters and divide it into words
#  +  # that appear in the dictionary I am using. At this time it is a stub 
#  +  #dictionary.
   
# + 
#  +      array1 = [] #place holder for the words that can be made from the string.
#  +      
#  +       s = 0 #start of a test word
#  +       e = 0 #end of a test word
#  +       l = str.length
  
 
#  # +       puts "About to segment #{str}"
  
#       while e <= l 
#  #+      puts "\n\n-------------------------------------------"
#  #+      puts "s is #{s}"
#  # +      puts "e is #{e}"
  
#         word = str[s..e] #possible words
#  # +       puts "So we're checking #{word}"
  
#  #-end
#         if valid_word?(word) do
 
#  # +        puts "#{word} is valid! Adding it to our array."
#  +     
#           array1 << word
  
 #-str = "fieldhorsepetal" 
 # +         puts "Added it to our array, which is now #{array1}"
 #          s = e+1
 #          e += 1  #new
 # # +         puts "incrementing s, which is now #{s}"
        
 #         else
 # # +        puts "#{word} is NOT a word. Moving on."
 #         e += 1
 # +       end
 #       end  
 # +
 # +     #return array1
 #end
 # +      
 #     str =("fieldhorsepetal")

 # +
# ________________________________save this one, take out "-" keep "+"___
require_relative 'dictionary'

#class StringSegmenter

def segment_string(str)
 
  def setup #initialize incidence variables
  array1 = [] #our word bank
      
  @s = 0 #start of a test word
  @e = 0 #end of a test word
  @l = str.length
  end
  
  def make_word_candidates
    while @e <= l 
    @word = str[@s..@e]
    end
  end 
    
  def validate_word_match
    if valid_word?(@word)
          return true
    else  return false 
    end#this should be returning true or false
  end

  def bank_valid_word_match(yes)
    if yes == true
      array1 << @word
    else nil
    end
  end

  def begin_find_next_word(stepup)
    if stepup == true
    @s = @e+1
    @e += 1
    else nil
    end
  end

  def not_a_match(no)
    if no == false
    @e += 1 
    else nil 
    end
  end  

  def build_array
    setup
    while @e <= l
      make_word_candidates
      validate_word_match
      bank_valid_word_match(validate_word_match)
      begin_find_next_word(make_word_candidates)
      not_a_match(make_word_candidates)
    end
    return array1
  end
    
  # def output
  #   return array1
  # end
  
end#end of segment_string method

#end#end of class "StringSegmenter"

     # str =("fieldhorsepetal")

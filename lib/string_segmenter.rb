require_relative "dictionary.rb"
#
# This defines my method with the parameter being a String passed in
#
def segment_string(str)
#
# start_arr is defined as the String passed in converted to an Array with each
# character as an individual element
#
# test_arr and valid_arr are defined as empty Arrays
#
# test_arr stores all words from start_arr that evaluate as True through my
# valid_word? method. They are later tested to sift out the actual valid word
#
# valid_arr stores the acutal valid words to ultimately be returned
#
# this_many acts as my counter that lets the program know when it reaches the
# end of either the original String or the pieces of String left as valid 
# words are removed. It's set to 1 instead of 0 in order to start evaluating
# at the first letter instead of nothing (since an empty String can't be a
# valid word)
#
start_arr = str.chars
test_arr  = Array.new
valid_arr = Array.new
this_many = 1
#
# This asks if the String passed in is empty and if it is, nil is returned and
# the program ends
#
  if str.empty?
    nil
  else
#
# This 'until' line loops the block until the start_arr is empty, since words
# evaluating to True are removed from the Array each time around
#
# While the length of start_arr is less than or equal to my counter            
# (this_many), the block loops. Once the counter is equal to the length, the
# end of the Array has been reached
#
# str_section is defined as a String of letters taken from the start_arr. As 
# the counter ticks up, more letters are added until a valid word is found, or
# not...
#
    until start_arr.empty?    
      while start_arr.length >= this_many
        str_section = start_arr.take(this_many).join
#
# The ever-increasing str_section is passed to the method valid_word? to test
# it against the words in my dictionary
#
# If str_section evaluates to True, a valid word has been found and it's added 
# to test_arr and 1 is added the counter
#
          if valid_word?(str_section)
            test_arr << str_section
          end  
        this_many += 1
      end
#
# Once all valid words are found in start_arr, or the end of start_arr is
# reached, the test_arr is passed to my dangler/nested-word test
#
# I may need to make separate tests for dangler and nested words in order to
# get around my problem...
#
# this_many is reset to 1
#
# str_loc is defined as the length of the first element in test_arr. This 
# allows the block to start evaluating for true words starting with the first 
# letter after the first valid word in order to check if there's a dangler or 
# if there's a new word nested that had started 
# (e.g.- 'speakersats' == 'speak', 'ersats' != 'speaker', 'sats')
#
      this_many = 1
      str_loc = test_arr[0].length
#
# If only one evaluation of True is found in the first run, there's only 1 
# word in test_arr, that's the actual valid word, it's shifted from
# test_arr to valid_arr, and the block ends
#
      if test_arr.length == 1
          valid_arr << test_arr.shift
#
# This acts like my first loop
#
# Until there's only 1 word (the actual valid word) left in test_arr, the 
# block loops
#
# While the amount of elements in start_arr, starting after the last letter
# of the first valid word, is greater than or equal to the counter, the end
# has yet to be reached, and the loop continues
#
# new_section is defined as an increasing String of letters starting from the
# first letter after the first word to evaluate as True
#
      else
        #until test_arr.length == 1
          while start_arr[str_loc..-1].length >= this_many
            new_section = start_arr[str_loc..-1].take(this_many).join
#
# If a valid word is found, there is a nested word, not a dangler, and the
# loop is broken
#
# If no valid word is found, there is a dangler, and the last word evaluated to
# True is the actual valid word
#
            if valid_word?(new_section)
              valid_arr << test_arr.shift
              test_arr.clear
              break
            end
#
# THIS IS WHERE MY PROBLEM LIES
# If a valid (nested) word is found, the first valid word should be the actual
# valid word. I would want to shift that word to valid_arr, empty the
# test_arr, drop the letters from the actual valid word from start_arr, and
# start the process again
#
# THE ACTUAL VALID WORD MUST BE EITHER THE 1ST OR LAST IN test_arr
#
# 1 is added to the counter, adding another letter to the String being
# evaluated
#
            this_many += 1
          end
#
# If no valid word is evaluated from new_section, the first element in
# test_arr isn't the valid word, so it's dropped
#
# The counter, this_many, is reset to 1
#
# str_loc ticks up 1, moving the point at which new_section begins forward 1
#
          #test_arr.shift
          #this_many = 1
          #str_loc   += 1
        #end
          if test_arr.length > 0
            valid_arr << test_arr.pop
          else
          end
      end
#
# Once actual valid word is found from test_arr and pushed to valid_arr, the
# counter is reset to 1, the actual valid word is removed from start_arr, and
# the block loops back to the first 'until' qualifier
#
      this_many = 1
      start_arr.shift(valid_arr[-1].length.to_i)
    end
  end
#
# Once all valid words are shifted to valid_arr and start_arr is emptied, the
# loop breaks and the valid_arr is returned
#
  valid_arr
end
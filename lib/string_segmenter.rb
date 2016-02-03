require_relative "dictionary"

def segment_string(str)
  puts "BEGINNING STRING SEGMENTATION FOR '#{str}'"
  len = str.length
  i_last_real_word = 0
  i = 0
  skip_counter = 0
  $words = Hash.new
  puts "Looping through each character in '#{str}'..."

  while i <= len do
    puts "\n-------"
    puts "Checking letters '#{i_last_real_word}' until '#{i}'"
    prefix = str[i_last_real_word...i]
    puts "Is '#{prefix}' a word?"
    if valid_word?(prefix)
      puts "Yes."
      puts "Adding '#{prefix}' to our collection of words."
      if skip_counter > 0
        puts "\nBut SKIP is in effect, so we will remove '#{prefix}' from our collection of words"
        puts "Now disabling SKIP so that the next word is added"
        skip_counter -= 1
      else
        $words[i] = prefix
        puts $words
        i_last_real_word = i
      end
    end

    if dangler?(i, len, prefix)
      puts "\nDANGLER! DANGLER!"
      puts "\nWe're at the end of the String, but '#{prefix}' is NOT a word."
      puts "The last word we added should NOT have been added."
      puts "We need to remove that word from our collection."
      delete_last_word  
      new_last_word_index = last_word_index
      if new_last_word_index.nil?
        puts "\nRemoving the last word emptied our collection."
        puts "So we will start again from the beginning"
        i_last_real_word = 0
        i = 0
      else
        i_last_real_word = new_last_word_index
        puts "We should start again from character number #{i_last_real_word}"
        i = i_last_real_word
      end
      puts "SKIP is now in effect!"
      skip_counter += 1
    end
    # if no danglers exist, continue to next letter
    i += 1
  end

  return $words.values

end

# Defines if danglers exist
#
# i - Integer value of the current character we are looking at
# len - Integer value of the length of the String we are testing
# prefix - String representing the remaining letters
#
# Example: (14, 14, jibberish)
# => true
#
# Example: (14, 14, word)
# => false
#
# Example: (13, 14, jibberish)
# => false
#
# Returns a Boolean of true/false
def dangler?(i, len, prefix)
  (i == len) && !valid_word?(prefix)
end


# Defines the method to delete the last word from $words
#
# Deletes the key-value pair and returns the value from $words whose key is equal to (last_word_index)
def delete_last_word
  $words.delete(last_word_index)
  puts "So now we just have '#{$words}' in our collection."
  puts "We need to rewind and start searching for words again."  
end


# Example: $words = {3=>"one"}
# => [3]
# 
#
# Returns a new Array populated with the keys from $words
# then Returns a new array created by sorting self.
#
# Returns the last element(s) of the Array. If the Array is empty, returns nil.
def last_word_index
  $words.keys.last
end

# segment_string("onetwothree")
# segment_string("onestwosthrees")
# segment_string("treesbrooms")











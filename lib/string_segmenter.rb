require_relative 'dictionary'

# returns string of letters as array of contained words
# 
# str - String to be split
# 
# Example:
# 
# "turtlebluetraintrust"
# => ["turtle", "blue", "train", "trust"]
#
# Returns an Array consisting of dictionary words
def segment_string(str)
  puts "STARTING!"
  collect = []
  wordHash = {}
  i = 0
  str = str.split('')
  skip_counter = 0
  puts "Just split str. It's now #{str}"
  puts "Starting the loop!"
  puts "str.length is #{str.length}"

  while i < (str.length) do
    puts "i is #{i}" #i is index
    # str[i] the letter 't', for example
    # str[0..i] all of str from 0 until i
    collect.push(str[i])
    puts "Just pushed i into 'collect', so collect is now #{collect}"
    word = collect.join('')
    puts "word is #{word}"

    if valid_word?(word) == true
      if skip_counter == 1
        puts "skip counter is 1; word is skipped"
        i += 1
        skip_counter = 0
        puts "skip counter is reset to 0"
        next
      else #no skip counter set
        puts "#{word} is valid! YAY!"
        puts "Adding word to hash."
        wordHash[word] = i
        puts "Okay, so wordHash is now #{wordHash}"
        collect = []
        puts "Collect is now empty."
        i += 1
        puts "word found, and i is now #{i}"
      end

    else #no valid word found
      puts "no valid word found"
      i += 1
      puts "trying next letter: i is now #{i}"

      if i >= str.length #at end of string
        puts "reached end of string--no valid word found"
        collect = []
        puts "Collect has been emptied to start loop over"
        skip_counter = 1
        puts "skip counter is set to 1"
        finalWord = wordHash.max_by { |k, v| v }

        finalWordKey = finalWord[0] #
        puts "finalWord is #{finalWord}"
        puts "finalWordKey is #{finalWordKey}"

        wordHash.delete(finalWordKey)
        puts "final word deleted from hash."
        puts "wordHash is now #{wordHash}"

        find_new_i_from_hash(wordHash)
        
      end
    end
  end

  puts "reached end of string"
  finalArray = wordHash.keys
  puts "finalArray is #{finalArray}"
  return finalArray
end

def find_new_i_from_hash(wordHash)
  if wordHash.max_by { |k,v| v } == nil #deleted only word in hash
    startHereValue = 0
  else #already other word in hash
    startHere = wordHash.max_by { |k,v| v }
    startHereValue = startHere[1] + 1
    puts "startHereValue value is #{startHereValue}"
  end
  i = startHereValue
  return i
end







# returns position to re-begin string iteration
#
# wordHash - Hash to be processed
#
# Example:
#
# find_restart_value({"apple"=>100, "banana"=>200})
# => 201
#
# returns position as Integer after end of most recently added word in Hash




# returns hash keys as array
#
# wordHash - Hash to be converted
#
# Example:
#
# final_hash_to_string({"a"=>100, "b"=>200})
# => [a, b]
#
# returns the Array of Hash keys
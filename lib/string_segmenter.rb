require_relative 'dictionary'

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
        puts "reached end of string"
        puts "word is not valid"
        collect = []
        puts "Collect has been emptied to start loop over"
        skip_counter = 1
        puts "skip counter is 1"
        finalWord = wordHash.max_by { |k, v| v }

        finalWordKey = finalWord[0] #
        puts "finalWord is #{finalWord}"
        puts "finalWordKey is #{finalWordKey}"

        wordHash.delete(finalWordKey)
        puts "final word deleted from hash."
        puts "wordHash is now #{wordHash}"

        if wordHash.max_by { |k,v| v } == nil #deleted only word in hash
          startHereValue = 0
        else #already other word in hash
          startHere = wordHash.max_by { |k,v| v }
          startHereValue = startHere[1] + 1
          puts "startHere value is #{startHere}"
        end
        i = startHereValue
      end
    end
  end

  puts "reached end of string"
  finalArray = wordHash.keys
  puts "finalArray is #{finalArray}"
  return finalArray
end
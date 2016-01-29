require_relative "dictionary"

def segment_string(str)
  puts "BEGINNING STRING SEGMENTATION FOR '#{str}'"

  len = str.length

  i_last_real_word = 0
  i = 0

  skip_counter = 0

  words = {}

  puts "Looping through each character in '#{str}'..."
  while i <= len do
    puts "\n-------------------------------------------------------------"
    puts "Checking letters #{i_last_real_word} until #{i}"

    prefix = str[i_last_real_word...i]
    puts "Is '#{prefix}' a word?"

    if valid_word?(prefix)
      puts "Yes."

      if skip_counter > 0
        puts "\nBut SKIP is in effect. So NOT adding this word."
        puts "Disabling SKIP so that NEXT word IS added."
        skip_counter -= 1
      else
        puts "Adding this word to collection."
        words[i] = prefix
        puts "So now we have #{words} collected."

        puts "Advancing i_last_real_word to #{i} so that future checks don't include '#{prefix}'"
        i_last_real_word = i
      end
    end

    # If we're about to finish but there are danglers:
    if dangler?(i, len, prefix)
      puts "ABOUT TO FINISH BUT '#{prefix}' IS NOT A WORD!"
      puts "DANGLER! DANGLER!"

      puts "\nThis means the last word we added SHOULD NOT have been added."
      puts "Removing that word from our collection."
      last_word_index = words.keys.sort.last
      words.delete(last_word_index)

      puts "So now we just have #{words} collected."

      puts "\nNow I need to REWIND and start checking for words again."
      new_last_word_index = words.keys.sort.last

      if new_last_word_index.nil?
        puts "Removing that last word actually EMPTIED our collection."
        puts "So we should start again from the BEGINNING."
        i_last_real_word = 0        
        i = 0
      else
        i_last_real_word = new_last_word_index
        puts "We should start again from character number #{i_last_real_word}"

        i = i_last_real_word
      end

      puts "SKIP IS NOW IN EFFECT! The next word we find WILL NOT be added."
      skip_counter += 1
    end

    i +=1
  end

  puts "\nLOOP COMPLETE. COLLECTION IS #{words}."
  puts "Returning just the words: #{words.values}"
  return words.values
end

def dangler?(i, len, prefix)
  (i == len) && !valid_word?(prefix)
end

















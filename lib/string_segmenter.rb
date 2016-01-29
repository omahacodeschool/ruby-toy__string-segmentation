def segment_string(str)
  puts "str is #{str}"

  len = str.length

  i = 0
  i_last_real_word = 0
  skip_counter = 0

  words = {}

  while i <= len do
    puts "From #{i_last_real_word} to #{i}"
    prefix = str[i_last_real_word...i]

    if valid_word?(prefix)
      if skip_counter > 0
        skip_counter -= 1
      else
        puts "Dictionary includes #{prefix}"
        i_last_real_word = i
        words[i] = prefix
        puts words
      end
    end

    # If we're about to finish but there are danglers:
    if (i == len) && !valid_word?(prefix)
      puts "Resetting"
      last_word_index = words.keys.sort.last
      words.delete(last_word_index)
      puts words

      new_last_word_index = words.keys.sort.last

      if new_last_word_index.nil?
        i_last_real_word = 0        
        i = 0
      else
        i_last_real_word = new_last_word_index
        i = i_last_real_word
      end

      skip_counter += 1
    end

    puts "i is now #{i}"

    i +=1
  end

  return words.values
end
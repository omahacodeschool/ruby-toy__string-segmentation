require_relative '../lib/dictionary.rb'
  
def segment_string(str)

  puts "Starting right meow..."

  # create a Array to store words
  # create a Hash to store the location of the word
  words = Array.new
  words_index = Hash.new(0)

  # create counter variables
  s = 0 # start letter
  e = 0 # end letter


  # while the the last letter is less than or equal to the string length
  # do the following...
  while e <= str.length do
    #
    # three conditions to check
    #
    ## 1. if we don't have a valid word by the time we reach the end of the string
    #
    ## 2. if we don't have a valid word, but have not yet reached the end of the string
    #
    ## 3. if we have found a valid word
    #
    # -------------------------------------------------------
    # 
    # if we've reached the end of the string and have jibberish, i.e. NOT a valid word
    #
    # and the last letter is equal to the string length
    #
    # and the length of the 'joined' words in our Array is less than the string length
    #
    if !valid_word?(str[s..e]) && e == str.length && words.join.length < str.length
      puts "#{str[s..e]} is not a word and we're out of letters to segment."
      puts "We need to start over at the beginning of the last valid word we found"
      #
      #
      # change the end letter to the max value found in the Hash, plus one
      #
      ## we need to do this because we need to check out a longer group of letters from our string
      #
      # to do this...chain the 'hash.values.max' methods
      #
      ## use the hash.values method to find all the values in the Hash
      #
      ### this spits out an Array containing all the values as integers
      #
      ## then use the array.max method to return the max integer
      # 
      e = words_index.values.max + 1
      puts "this is the last letter: #{e}"
      #
      #
      # delete the last word from the Array
      #
      # use .delete method
      #
      words.delete(words_index.key(words_index.values.max))
      words_index.delete(words_index.max_by { |k,v| v } [0])
      puts "here is our current Hash #{words_index}"
      if words_index.values.max == nil
        s = 0
      else
        s = words_index.values.max + 1
      end
      puts "this is the #{s}"
    #
    #
    # if we don't find a valid word, and are not to the end of the string
    #
    elsif !valid_word?(str[s..e])
      puts "#{str[s..e]} is not a word, so let's add the next letter and see."
      # add one to the counter variable and keep trying
      e += 1
      
    # if we find a valid word  
    elsif valid_word?(str[s..e])
      puts "#{str[s..e]} IS a word. Adding #{str[s..e]} to'words' Array."
      words << str[s..e]
      words_index[str[s..e]] = e
      # then move on to the next character
      # starting letter is now the ending letter, plus one
      s = e + 1
      # ending letter is now what it was, plus one
      e += 1
    end
  

  end
  return words

end
require_relative "dictionary"

def segment_string(str)
  puts "The value of $words is #{$words}"

  $words = {}

  puts "The value of $words is #{$words}"

  len = str.length

  i_last_real_word = 0
  i = 0

  skip_counter = 0

  # words = {}

  while i <= len do
    prefix = str[i_last_real_word...i]

    if valid_word?(prefix)

      if skip_counter > 0
        skip_counter -= 1
      else
        $words[i] = prefix

        i_last_real_word = i
      end
    end

    if dangler?(i, len, prefix)
      delete_last_word

      new_last_word_index = last_word_index

      if new_last_word_index.nil?
        i_last_real_word = 0        
        i = 0
      else
        i_last_real_word = new_last_word_index

        i = i_last_real_word
      end

      skip_counter += 1
    end

    i +=1
  end

  return $words.values
end

def dangler?(i, len, prefix)
  (i == len) && !valid_word?(prefix)
end

def delete_last_word  
  $words.delete(last_word_index)
end

def last_word_index
  $words.keys.sort.last
end

puts "The value of $words is #{$words}"

puts "\n\nGoing to try the method with 'treebroom'..."
segment_string("treebroom")

puts "The value of $words is #{$words}"

puts "\n\nGoing to try the method with 'yellowleaf'..."
segment_string("yellowleaf")

puts "The value of $words is #{$words}"
















































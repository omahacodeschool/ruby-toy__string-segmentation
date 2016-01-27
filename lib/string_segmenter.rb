require 'dictionary'

def segment_string(str)
  collect = Array.new
  wordArray = Array.new
  str = str.split('')
  str.each do |i|
    collect.push(i)
    word = collect.join('')
    if valid_word?(word) == true
      wordArray.push(word)
      collect = []
    end
  end
  return wordArray
end

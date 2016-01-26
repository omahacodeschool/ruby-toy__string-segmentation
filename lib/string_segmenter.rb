require 'dictionary'

def segment_string(str)
  collect = Array.new
  wordArray = Array.new
  str = str.split('')
  str.each do |i|
    collect.push(i)
    if valid_word?(collect) == true
      word = collect.join('')
      wordArray.push(word)
      collect = []
    end
  end
  return wordArray
end

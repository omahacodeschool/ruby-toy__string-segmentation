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
    when i == collect[-1]
      if collect.empty? == false
        str.each do |i| #skip counter += 1 here?
          collect.push(i)
          word = collect.join('')
          if valid_word?(word) == true
            wordArray.push(word)
            collect = []
          end
        end
      else break
      end
  end
  return wordArray
end

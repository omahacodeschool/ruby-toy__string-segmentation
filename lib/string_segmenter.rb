require_relative 'dictionary'

def segment_string(str)
    count = str.length
    max = 0
    wordset = []
    trash = []
    valid_list = []
    valid_hash = Hash.new
    skip_counter = 0
    teststr = ""
    it_worked = false
    word = []

  for i in 0...str.length
    if i >= 0
      word << str[i]
        if valid_word?(word) && true
          valid_list << word.join("")
          word = []
        else 
        end
        
    end
    
  end
valid_list.each do |item| valid_hash[item] =+ 0
end
print valid_hash
end

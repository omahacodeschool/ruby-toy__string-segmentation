require_relative 'dictionary'

def segment_string(str)
    str = str.downcase.reverse
    count = str.length
    max = 0
    wordset = []
    trash = []
    valid_list = Hash.new(0)
    skip_counter = 0
    teststr = ""
    it_worked = false
    word = []
    answer = []
  

  for i in 0...str.length
    if i <= str.length
        word << str[i]
        if valid_word?(word) && true
          valid_list.store(word.join("").reverse, i)
            max = max + str[i].length
              skip_counter = 0
               word = []
        end
    end
  end
answer = valid_list.keys
answer = answer.reverse

if answer.join("").chars.sort == str.chars.sort
 return answer
else
 return nil
end
end
print segment_string("appleshelpingguitar")
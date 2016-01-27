require_relative 'dictionary'

def segment_string(str)
  letters = str.to_s.split("")
  words = []
  answer = []
  while letters.length > 0
    words << letters.shift
    test = words.join
    if valid_word?(test) == true
      answer << words.join
      words = []
      puts answer.to_s + "= answer"
      puts words.to_s + "= words"
      puts letters.to_s + "= letters"

    end
  end
end

segment_string("catpopper")
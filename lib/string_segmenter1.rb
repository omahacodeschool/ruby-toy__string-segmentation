require_relative 'dictionary'

  def segment_string(str)
    count = str.length
    max = 0
    wordset = []
    trash = []
    valid_list = []
    wordset_test = Hash.new(0)

    @dictionary.each do |word| str[word]
      if str[word] != nil
        wordset << str[word]
      else
      end
    end

    if wordset.empty?
      return "Invalid String"
    else
    end

  for i in 0...wordset.length
    if max <= count 
      if max < count
        max = max + wordset[i].length
        valid_list << wordset[i]
      else max = count
      end
    end
  end
  

  if valid_list.join("").chars.sort == str.chars.sort
   return valid_list
  else
    return "boo!"
  end

  end

print segment_string("applesmilespray")
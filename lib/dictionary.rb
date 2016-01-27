def valid_word?(word)
  dictionary = ["cat","cats","butt","butts","hamper","yarn","play","playing","kitten","kitty","yarn","dogs","dog","trash","popper"]
  if dictionary.include?(word)
    return true
  else
    return false
  end
end
def valid_word?(word)
  dictionary = ["apple", "meagan", "guitar", "gatsby", "green", "tacos", "scarf", "adam", "turtle", "blue", "train", "trust", "help", "helping", "followed", "spread", "smiles", "smile", "apples" "pray", "spray"]
  dictionary.sort!
  word = word.join("")

if dictionary.include?(word) && true
  return word
else
  return dictionary.include?(word)
end

end


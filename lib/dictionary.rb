def valid_word?(word)
  dictionary = ["apple", "meagan", "guitar", "gatsby", "green", "tacos", "scarf", "adam", "turtle", "blue", "train", "trust", "help", "helping", "followed", "spread", "smiles", "smile", "apples", "spray", "smiles", "respite", "spite", "taco"]
  dictionary.sort!
  word = word.join("").downcase
  word = word.reverse

  return dictionary.include?(word)


end

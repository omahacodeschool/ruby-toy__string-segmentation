def valid_word?(word)
  dictionary = ["turtle", "blue", "train", "trust", "smiles", "birth", "five", "smile", "asset", "as", "a"]

  return dictionary.include?(word)

  # Return true if your dictionary contains `word`
  # or false if it does not.
end
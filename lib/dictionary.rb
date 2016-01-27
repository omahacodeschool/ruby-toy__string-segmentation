def valid_word?(word)
  # Populate this array with some words of your choosing.
  dictionary = ["turtle", "blue", "train", "trust", "smiles", "smile", "birth", "five", "caps", "capes", "scans", "cans", "scan", "can", "play", "playing" "drink", "drinking", "jump", "jumping", ]

  return dictionary.include?(word)
  # Return true if your dictionary contains `word`
  # or false if it does not.
end
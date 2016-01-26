def valid_word?(word)
  # Populate this array with some words of your choosing.
  dictionary = ["turtle", "blue", "train", "trust", "elephant", "waffle", "puzzle", "lion", "tiger", "bear"]

  # Return true if your dictionary contains `word`
  # or false if it does not.
  dictionary.include?(word)

end

puts valid_word?("blue")

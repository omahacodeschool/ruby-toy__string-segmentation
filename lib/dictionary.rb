def valid_word?(word)
  # Populate this array with some words of your choosing.
  dictionary = ["words","turtle","happy","blue","pink",
    "train","rust","trust","supper","fish","fishing","word",
    "bluebird","bird","blue","car","publish","pub"]
  dictionary.include?(word)
  # Return true if your dictionary contains `word`
  # or false if it does not.
end
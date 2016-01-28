def valid_word?(word)
  dictionary = ["diamond", "blue", "bluest", "crystal", "quantity", "gorilla", "crystalize"]
return (dictionary.grep(word).any?)

end

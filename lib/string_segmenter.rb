require_relative 'dictionary'
def segment_string(str)
  #this method should take a string of characters and divide it into words that appear in the dictionary I am using. At this time it is a stub dictionary.
 
 #what I would like to do is take one pass through the string and find
 #the candidate words and make an array of them. Then I don't have to keep
 #sending things through the dictionary.

i = 0 #
array1 = [] #place holder for the words that can be made from the string.
array2 = [] #place holder for words from array1 for final result.
characters = str.split " " #candidate groups of characters 
characters.each do | a, i | #a is the character, i the index
word = " " #how do I add characters to existing word?
valid_word?(word)
  if true
  array1 << word
  end
i += 1
word << characters | i += 1 | #hope this adds a character to the candidate word



end

str = "fieldhorsepetal"
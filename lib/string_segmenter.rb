require_relative "dictionary"
def segment_string(str)
arr = str.split(//)
letters = []
words = []
  while arr.length != 0
  arr.each {letters << arr.shift}
  collection = letters.join
    if valid_word?(collection) == true
      words << collection
      collection = []
    end
    return words
  end
end
#segment_string("blueturtlehappy")

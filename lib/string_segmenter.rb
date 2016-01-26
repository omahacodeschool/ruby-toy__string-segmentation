require 'dictionary'
def segment_string(str)
  words = []
  str.downcase.delete('^a-z ')
  if str.include dictionary
    then words(//) << str
  end
end
segment_string("avacadobuscatdog")
words
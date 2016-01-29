require_relative 'dictionary'
require 'pry'

def segment_string(str)

  lettercollection = []
  wordstore = {}
  i = 0
  str = str.split('')
  skip_counter = 0
  y = str.length

  while i < y do
    lettercollection.push(str[i])
    word = lettercollection.join('')

    if valid_word?(word) == true
      if skip_counter == 1
        i += 1
        skip_counter = 0
        next
      else
        wordstore[word] = i
        lettercollection = []
        i += 1
      end

    else

      i += 1
      if i >= str.length
        lettercollection = []
        skip_counter = 1
        lastword = wordstore.max_by { |k, v| v }
        lastwordkey = lastword[0]
        wordstore.delete(lastwordkey)

        if wordstore.max_by { |k, v| v } == nil
            startpointvalue = 0
          else 
            startpoint = wordstore.max_by { |k,v| v }
            startpointvalue = startpoint[1] + 1
          end
          i = startpointvalue
        end
      end
    end

    result_array = wordstore.keys
    return result_array
end


puts segment_string("sharksblueswaffletigers")























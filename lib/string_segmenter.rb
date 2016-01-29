require_relative "dictionary"
def segment_string(str)
  arr = str.split(//)
  letters = ""
  collection = []
  i = 1
  skip_counter = 0
  temp_storage = []
  count = 0
  
  
  while i < arr.length

  
      letters = arr[count..i].join
    
      if valid_word?(letters) == true
        temp_storage << letters 
        letters="" 

        n = i + 1
        while n < arr.length
          double_check = arr[count..n].join # e.g. "carp"

          if valid_word?(double_check) == true
            temp_storage = []
            temp_storage << double_check
          end

          n += 1

        end

        collection << temp_storage.pop
        i = collection.join.length
        count = i
      else
        i += 1
        
      end
    end
      collection   
  end


#segment_string("carspublishswimbluebirdtrustrustswimingly")

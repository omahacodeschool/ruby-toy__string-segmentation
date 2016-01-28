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
      puts "this is letters #{letters}"
    
      if valid_word?(letters) == true
        temp_storage << letters 
        letters="" 
        puts "Current temp is #{temp_storage}"

        n = i + 1
        while n < arr.length
          double_check = arr[count..n].join # e.g. "carp"
          puts " array is #{arr[count..n]}"

          if valid_word?(double_check) == true
            temp_storage = []
            temp_storage << double_check
            
            puts "current temp_storage is #{temp_storage}"
          end

          n += 1
          puts "this is n #{n}"
        end

        collection << temp_storage[0]
        i += 1
        count = i
      else
        i += 1
      end
    end
    puts "Now 'collection' is #{collection}"    
  end

segment_string("carpublishbluebird")

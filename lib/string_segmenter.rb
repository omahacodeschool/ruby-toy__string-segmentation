require_relative 'dictionary'
def segment_string(str)
  #this method should take a string of characters and divide it into words
  # that appear in the dictionary I am using. At this time it is a stub 
  #dictionary.
 
 
      array1 = [] #place holder for the words that can be made from the string.
      
       s = 0 #start of a test word
       e = 0 #end of a test word
       l = str.length

       puts "About to segment #{str}"

     while e <= l #new was <1
      puts "\n\n-------------------------------------------"
      puts "s is #{s}"
      puts "e is #{e}"

       word = str[s..e] #possible words
       puts "So we're checking #{word}"

       if valid_word?(word) 

        puts "#{word} is valid! Adding it to our array."
     
         array1 << word

         puts "Added it to our array, which is now #{array1}"
         s = e+1
         e += 1  #new
         puts "incrementing s, which is now #{s}"
       
       else
        puts "#{word} is NOT a word. Moving on."
        e += 1
       end
     end  

     return array1
end
      
     str =("fieldhorsepetal")

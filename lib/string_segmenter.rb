require_relative '../lib/dictionary.rb'


# Divide a String up into words.
#
# str - The String that is going to be segmented.
#
# Returns the Array filled with words.
def segment_string(str)
	#create a hash to store the location of the word
	word_index = Hash.new(0)
	#create variables to save the index of the first letter currently in use and the index of the last letter currently in use
	first_letter= 0
	last_letter = 0

	#while the variable is less than or equal to the string length, do the following operation
	while last_letter <= str.length do

		if danglers?(str, first_letter, last_letter, word_index)
		#if !valid_word?(str[first_letter..last_letter]) && last_letter == str.length && word_index.keys.join.length < str.length
			#Take the value of the previous last letter and add one to it
			last_letter = word_index.values.max + 1
			#Delete the key/value pair with highest value
			word_index.delete(word_index.max_by{|k,v| v}[0])
			#Take the value of the previous word's last letter and add 1, but if there is no previous word, then you need to start over at 0
			if word_index.values.max == nil
				first_letter = 0
			else 
				first_letter = word_index.values.max + 1 
			end

		#if the current collection of characters is not a word
		elsif !valid_word?(str[first_letter..last_letter])
			#add one to the last_letter variable
			last_letter += 1

			#if the collection of characters is a word
		elsif valid_word?(str[first_letter..last_letter])
			#put index pair in the hash
			word_index[str[first_letter..last_letter]] = last_letter			
			#then move on to the next character by reassigning the last_letter +1 to the first_letter spot and adding one to the last_letter
			first_letter = last_letter + 1
			last_letter += 1
		end
	end
	return word_index.keys
end


###-------FIRST ATTEMPT AT REFACTORING--------###
def danglers?(str, first_letter, last_letter, word_index)
	!valid_word?(str[first_letter..last_letter]) && last_letter == str.length && word_index.keys.join.length < str.length
end

# Complete the following process when you find a word
#
# str - The String that is going to be acted on.
#
# Returns String and stores word in an Array and a Hash.
# def post_word_finding_process(str, words, word_index, first_letter, last_letter)
# 	words << str[first_letter..last_letter]
# 	word_index[str[first_letter..last_letter]] = last_letter			
# 	first_letter = last_letter + 1
# 	last_letter += 1
# end


#Check for conditions in which there are danglers.
#if the current collection of characters is not a word
#AND if the current value of last_letter is the same as the value of the length of the string
#AND if the length of the joined array is less than the length of the original string
#
# str - The String that is going to be acted on.
#
# Returns true or false.
# def danglers(str, first_letter, last_letter, word_index)
# 	!valid_word?(str[first_letter..last_letter]) && last_letter == str.length && word_index.join.length < str.length
# end



# Return to the beginning of the current word.
#
# str - The String that is going to be acted on.
#
# Returns String and removes word from Hash and Array.
# def go_back_to_beginning_of_word(str)
# 	last_letter = word_index.values.max + 1
# 	words.delete(word_index.key(word_index.values.max))
# 	word_index.delete(word_index.max_by{|k,v| v}[0])
# 	if word_index.values.max == nil
# 		first_letter = 0
# 	else 
# 		first_letter = word_index.values.max + 1 
# 	end
# end

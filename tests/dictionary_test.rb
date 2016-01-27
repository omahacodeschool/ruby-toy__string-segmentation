require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_dictionary_true
      word="real"
      assert_equal(true, valid_word?(word))
  end
  def test_dictionary_false
      word="rainvow"
      assert_equal(false, valid_word?(word))
  end
#test the method with a word that is included - should return true
#test with a word that is not included - should return false
end 
# Remember, the names of all test methods should begin with "test_".
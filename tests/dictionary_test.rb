require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
 def test_valid_word
  word = "love"
  assert_equal(true, valid_word?(word))
end

end
# Remember, the names of all test methods should begin with "test_".
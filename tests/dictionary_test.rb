require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
 def test_valid_word
  word = new_arr
  assert_equal(true, valid_word?(word))
end

end
# Remember, the names of all test methods should begin with "test_".
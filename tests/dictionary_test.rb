require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_is_in_dictionary
    word = "turtle"
    assert_equal(true, valid_word?(word))
  end

  def test_not_in_dictionary
    word = "tuttle"
    assert_equal(false, valid_word?(word))
  end
end

# Remember, the names of all test methods should begin with "test_".
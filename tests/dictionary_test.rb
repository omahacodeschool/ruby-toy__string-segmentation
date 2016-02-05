require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  
  def test_if_exists
    word = "hamper"
    assert_equal(true, valid_word?(word))
  end

  def test_if_not_exists
    word = "humancentipede"
    assert_equal(false, valid_word?(word))
  end
end

# Remember, the names of all test methods should begin with "test_".
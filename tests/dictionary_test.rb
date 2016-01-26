require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_dictionary_if_true
    sample_word = "words"
    result = valid_word?(sample_word)

    assert_equal(true, result)
  end

  def test_dictionary_if_false
    sample_word = "dog"
    result = valid_word?(sample_word)

    assert_equal(false, result)
  end 
end

# Remember, the names of all test methods should begin with "test_".
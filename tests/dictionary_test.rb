require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_dictionary_valid_word
    word = ["s", "e", "l", "i", "m", "s"]
    result = valid_word?(word)
    assert_equal(true, result)
  end

  def test_dictionary_invalid_word
    word = ["b", "e", "e", "b", "o", "p"]
    result = valid_word?(word)
    assert_equal(false, result)
  end

end
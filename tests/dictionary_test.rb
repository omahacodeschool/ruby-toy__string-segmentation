require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_word_capable
    word = "zebra"
    assert_equal(true, valid_word?(word))
  end

  def test_nonword
    word = "a;sldkjf"
    assert_equal(false, valid_word?(word))
  end 
end

  # Return true if your dictionary contains `word`
  # or false if it does not.
  
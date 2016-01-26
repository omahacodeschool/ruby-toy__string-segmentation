require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_dictionary_valid_word
    word = "smiles"
    result = valid_word?(word)
    assert_equal(true, result)
  end

  def test_dictionary_invalid_word
    word = "beebop"
    result = valid_word?(word)
    assert_equal(false, result)
  end

  def test_dictionary_extra_character
    word = "smiile"
    result = valid_word?(word)
    assert_equal(false, result)
  end

  def test_dictionary_capital_letters
    word = "SMIle"
    result = valid_word?(word)
    assert_equal(true, result)
  end
end
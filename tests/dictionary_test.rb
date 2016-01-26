require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_dictionary_plural
    assert_equal(true, valid_word?("smiles"))
  end

  def test_dictionary
  assert_equal(true, valid_word?("blue"))
  end
end
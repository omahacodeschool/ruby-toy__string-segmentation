require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_dictionary
    dictionary.include?(word)
  end
end
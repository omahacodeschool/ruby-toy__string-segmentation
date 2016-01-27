require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_dictionary
    sample_word = "one"
    assert_equal(true, valid_word?(sample_word))
  end

  def test_not_in_dictionary
    sample_word = "dynusour"
    assert_equal(false, valid_word?(sample_word))
  end
end

# Remember, the names of all test methods should begin with "test_".
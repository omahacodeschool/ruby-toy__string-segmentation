require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_word_part
    sample_input = "apar"
    assert_equal(false, valid_word?(sample_input))
  end

  def test_word_full
    sample_input = "apart"
    assert_equal(true, valid_word?(sample_input))
  end

  def test_word_space
    sample_input = " "
    assert_equal(false, valid_word?(sample_input))
  end
end

# Remember, the names of all test methods should begin with "test_".

#
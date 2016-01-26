require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_in_Dictionary?
  sample_word = "dinosaur"
  assert_equal(true, valid_word?(sample_word))
  end
  def not_in_Dictionary?
  sample_word = "notaword"
  assert_equal(false, valid_word?(sample_word))
  end
end

# Remember, the names of all test methods should begin with "test_".
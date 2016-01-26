require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_find_word
    sample_str = "turtlehappy"
    assert_equal("turtle", segment_string(sample_str))
  end
  def test_plural_words
    sample_str = "wordsturtle"
    assert_equal("words", segment_string(sample_str))
  end
end

# Remember, the names of all test methods should begin with "test_".
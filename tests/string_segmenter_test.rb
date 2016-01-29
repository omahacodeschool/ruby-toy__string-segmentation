require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_strings_full_words
    str = "avacadoburritocatdog"
    assert_equal(["avacado", "burrito", "cat", "dog"], segment_string(str))
  end
end
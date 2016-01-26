require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_strings_full_words
  str = "avacadoburritocatdog"
  assert_equal(["avacado", "burrito", "cat", "dog"], string_segmenter(str))
  end
  def test_strings_other_characters
  str = "avacad-o-burrito*catdog*"
  assert_equal(["avacado", "burrito","cat","dog"], string_segmenter(str))
  end
  def test_full_words
  str = "hampsterslegomantrouble"
  assert_equal(["hampsters","lego","man","trouble"], string_segmenter(str))
  end
end
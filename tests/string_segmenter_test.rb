require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest <  Minitest::Test
  def test_singular_words
    x = StrSegmenter.new
    str = "buttcathamper"
    assert_equal(["butt","cat","hamper"], x.segment_string(str))
  end

  def test_plural_word
    x = StrSegmenter.new
    str = "buttscatshamper"
    assert_equal(["butts","cats","hamper"], x.segment_string(str))
  end
  def test_ing_words
    x = StrSegmenter.new
    str = "catplayingyarn"
    assert_equal(["cat","playing","yarn"], x.segment_string(str))
  end
end

# Remember, the names of all test methods should begin with "test_".
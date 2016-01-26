require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest <  Minitest::Test
  def test_singular_words
    str = "buttcathamper"
    assert_equal(["butt","cat","hamper"], segment_string(str))
  end

  def test_plural_word
    str = "buttscatshamper"
    assert_equal(["butts","cats","hamper"], segment_string(str))
  end
  def test_ing_words
    str = "catplayingyarn"
    assert_equal(["cat","playing","yarn"], segment_string(str))
  end
end

# Remember, the names of all test methods should begin with "test_".
require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_string_with_capital_letters
    str = "AreYouForReal"
    assert_equal(["are","you","for","real"], segment_string(str))
  end

  def test_string_with_plural_words
    str = "catsgo"
    assert_equal(["cats","go"], segment_string(str))
  end


  def test_dangling_letters
    str = "rainbows"
    assert_equal(["rainbows"], segment_string(str))
  end
end
# Remember, the names of all test methods should begin with "test_".

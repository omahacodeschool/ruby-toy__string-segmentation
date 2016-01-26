require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_string_with_capital_letters
    str = "CatcallErgo"
    assert_equal(["Catcall","Ergo"], segment_string(str))
  end

class StringSegmenterTest < Minitest::Test
  def test_string_with_plural_words
    str = "catcallsergo"
    assert_equal(["catcalls","ergo"], segment_string(str))
  end
end
end
# Remember, the names of all test methods should begin with "test_".

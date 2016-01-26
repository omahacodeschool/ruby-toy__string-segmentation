require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_divided_string#use include method
    sample_words("fieldhorsepetal")
  assert_equal(("field", "horse," "petal"), segment_string)
end

# Remember, the names of all test methods should begin with "test_".
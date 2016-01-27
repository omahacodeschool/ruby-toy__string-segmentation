require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_divided_string
    sample_words=("fieldhorsepetal")
    assert_equal(["field", "horse", "petal"], segment_string(sample_words))
  end

  # def test_plurals
  #   sample_words=("fieldshorsepetal")
  #   assert_equal(["fields", "horse", "petal"], segment_string(sample_words))
  # end

  # def test_compound_words
  #   sample_words=("fieldstownhousepetal")
  #   assert_equal(["fields", "townhouse", "petal"], segment_string(sample_words))
  # end

end


# Remember, the names of all test methods should begin with "test_".
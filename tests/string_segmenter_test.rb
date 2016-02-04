require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  # Your test methods go here.
  def test_string_segmentation_basic
    sample_string = "onetwothree"
    assert_equal(["one", "two", "three"], segment_string(sample_string))
  end

  def test_string_segmentation_plurals
    sample_string = "onestwosthrees"
    assert_equal(["ones", "twos", "threes"], segment_string(sample_string))
  end

  def test_string_segmentation_treesbrooms
    sample_string = "treesbrooms"
    assert_equal(["trees", "brooms"], segment_string(sample_string))
  end

end

# Remember, the names of all test methods should begin with "test_".
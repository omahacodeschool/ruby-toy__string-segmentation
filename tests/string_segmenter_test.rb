require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_string_segmenter
    sample_input = "turtlebluetraintrust"
    assert_equal(["turtle", "blue", "train", "trust"], segment_string(sample_input))
  end

  def test_string_segmenter_plurals
    sample_input = "assetsmilesbirthfive"
    assert_equal(["asset", "smiles", "birth", "five"], segment_string(sample_input))
  end
end
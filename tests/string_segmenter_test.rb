require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_string_segmenter
    sample_input = "turtlebluetraintrust"
    assert_equal(["turtle", "blue", "train", "trust"], run_through_segmentation
  end

  def test_string_segmenter_plurals
    sample_input = "assetsmilesbirthfive"
    assert_equal(["asset", "smiles", "birth", "five"], run_through_segmentation)
  end
end
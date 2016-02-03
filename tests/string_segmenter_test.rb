require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test

  def test_run_through_segmentation
    sample_run = Segmentation.new
    sample_run.set_segment_test_vars("turtlebluetraintrust")

    assert_equal(["turtle", "blue", "train", "trust"], sample_run.run_through_segmentation)
  end

  def test_run_through_segmentation_plurals
    sample_run = Segmentation.new
    sample_run.set_segment_plurals_test_vars("assetsmilesbirthfive")

    assert_equal(["asset", "smiles", "birth", "five"], sample_run.run_through_segmentation)
  end

end


# def set_segment_test_vars(x)
#   @str = x
# end

# def set_segment_plurals_test_vars(x)
#   @str = x
# end
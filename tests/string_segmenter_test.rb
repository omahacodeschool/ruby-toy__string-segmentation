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

  # def test_string_segmentation_anchorman_intro
  #   sample_string = "hownowbrowncow"
  #   assert_equal(["how", "now", "brown", "cow"], segment_string(sample_string))
  # end

  # def test_string_segmentation_anchorman_cont
  #   sample_string = "uniquenewyork"
  #   assert_equal(["unique", "new", "york"], segment_string(sample_string))
  # end

  # def test_string_segmentation_animals
  #   sample_string = "chickencathorsedog"
  #   assert_equal(["chicken", "cat", "horse", "dog"], segment_string(sample_string))
  # end

  # def test_string_chickenenglish
  #   sample_string = "chickenenglish"
  #   assert_equal(["chicken", "english"], segment_string(sample_string))
  # end

end

# Remember, the names of all test methods should begin with "test_".
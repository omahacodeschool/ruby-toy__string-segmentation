require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_string_segmentation_string_is_word
    sample_string = "one"
    assert_equal(["one"], segment_string(sample_string))
  end
  
  def test_string_segmentation_basic
    sample_string = "onetwothree"
    assert_equal(["one", "two", "three"], segment_string(sample_string))
  end
  
  def test_string_segmentation_plurals
    sample_string = "onestwosthrees"
    assert_equal(["ones", "twos", "threes"], segment_string(sample_string))
  end

  def test_string_segmentation_ing
    sample_string = "openingclosingendingstarting"
    assert_equal(["opening", "closing", "ending", "starting"], segment_string(sample_string))
  end

  def test_string_segmentation_ion
    sample_string = "connectionrejectionabstractionaffection"
    assert_equal(["connection", "rejection", "abstraction", "affection"], segment_string(sample_string))
  end

  def test_string_segmentation_ed
    sample_string = "trustedfatedpartedwalked"
    assert_equal(["trusted", "fated", "parted", "walked"], segment_string(sample_string))
  end

  def test_string_segmentation_ment
    sample_string = "cementcasementbasementpavement"
    assert_equal(["cement", "casement", "basement", "pavement"], segment_string(sample_string))
  end

  def test_string_segmentation_ly
    sample_string = "lovelycarefullyoriginally"
    assert_equal(["lovely", "carefully", "originally"], segment_string(sample_string))
  end

  def test_string_segmentation_ive
    sample_string = "positivesuggestiveconnective"
    assert_equal(["positive", "suggestive", "connective"], segment_string(sample_string))
  end 
  
  def test_string_segmentation_catch_all
    sample_string = "judginglyendingsaliasesbasements"
    assert_equal(["judgingly", "endings", "aliases", "basements"], segment_string(sample_string))
  end 
end

# Remember, the names of all test methods should begin with "test_".
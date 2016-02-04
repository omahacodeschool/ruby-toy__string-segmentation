
require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test

  def test_string_segmentation_string_is_word
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("one")
    assert_equal(["one"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_basic
    sample_segmenter = String_Segmenter.new    
    sample_segmenter.set_str("onetwothree")
    assert_equal(["one", "two", "three"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_plurals
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("onestwosthrees")
    assert_equal(["ones", "twos", "threes"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_ing
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("openingclosingendingstarting")
    assert_equal(["opening", "closing", "ending", "starting"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_ion
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("connectionrejectionabstractionaffection")
    assert_equal(["connection", "rejection", "abstraction", "affection"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_ed
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("trustedfatedpartedwalked")
    assert_equal(["trusted", "fated", "parted", "walked"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_ment
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("cementcasementbasementpavement")
    assert_equal(["cement", "casement", "basement", "pavement"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_ly
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("lovelycarefullyoriginally")
    assert_equal(["lovely", "carefully", "originally"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_ive
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("positivesuggestiveconnective")
    assert_equal(["positive", "suggestive", "connective"], sample_segmenter.segment_string)
  end

  def test_string_segmentation_catch_all
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("judginglyendingsaliasesbasements")
    assert_equal(["judgingly", "endings", "aliases", "basements"],sample_segmenter.segment_string)
  end

  def test_word_within_word
    sample_segmenter = String_Segmenter.new
    sample_segmenter.set_str("molassescementtrusted")
    assert_equal(["molasses", "cement", "trusted"], sample_segmenter.segment_string)
  end
end

require 'test_helper'
#require 'string_segmenter'
require 'string_seg_sumeet2'

class StringSegmenterTest < Minitest::Test
  def test_collect_words
    sample_str = "iloveyou"
    x = StringSegmentor.new
    assert_equal(["i", "love", "you"], x.segment_string(sample_str))
  end

  def test_plural
    sample_str = "ilovepuzzles"
    x = StringSegmentor.new
    assert_equal(["i", "love", "puzzles"], x.segment_string(sample_str))
  end

  def test_compound
    sample_str = "frostbitehuman"
    x = StringSegmentor.new
    assert_equal(["frostbite", "human"], x.segment_string(sample_str))
  end

  def test_word_in_word
    sample_str = "pressuremagicart"
    x = StringSegmentor.new
    assert_equal(["pressure", "magic", "art"], x.segment_string(sample_str))
  end

end

# Remember, the names of all test methods should begin with "test_".
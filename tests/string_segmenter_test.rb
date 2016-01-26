require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_collect_words
    sample_str = "iloveyou"
    assert_equal(["i", "love", "you"], segment_string(sample_str))
  end

  def test_plural
    sample_str = "ilovepuzzles"
    assert_equal(["i", "love", "puzzles"], segment_string(sample_str))
  end

  def test_compound
    sample_str = "frostbitehuman"
    assert_equal(["frostbite", "human"], segment_string(sample_str))
  end

  def test_word_in_word
    sample_str = "pressuremagicart"
    assert_equal(["pressure", "magic", "art"], segment_string(sample_str))
  end

end

# Remember, the names of all test methods should begin with "test_".
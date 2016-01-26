require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_collect_words
    sample_str = "iloveyou"
    assert_equal(["i", "love", "you"], segment_string(sample_str))
  end

  def test_plural
    sample_plural = "ilovepuzzles"
    assert_equal(["i", "love", "puzzles"], segment_string(sample_plural))
  end

  def test_compound
    sample_compound = "frostbitehuman"
    assert_equal(["frostbite", "human"], segment_string(sample_compound))
  end

  def test_word_in_word
    word_word = "pressuremagicart"
    assert_equal(["pressue", "magic", "art"], segment_string(word_word))
  end

end

# Remember, the names of all test methods should begin with "test_".
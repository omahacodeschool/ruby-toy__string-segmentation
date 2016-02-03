require 'test_helper'
require 'string_segmenter_oop'

class StringSegmenterTest < Minitest::Test
  def test_find_word
    sample_str = StringSegmenter.new("turtlehappy")
    assert_equal((["turtle", "happy"]), sample_str.run_segmenter)
  end
  def test_plural_words
    sample_str = StringSegmenter.new("wordsupper")
    assert_equal((["word", "supper"]), sample_str.run_segmenter)
  end
  def test_compound_word
    sample_str = StringSegmenter.new("birdbluebird")
    assert_equal((["bird", "bluebird"]), sample_str.run_segmenter)
  end
  def test_versions_words
    sample_str = StringSegmenter.new("swimsswimingly")
    assert_equal((["swims","swimingly"]), sample_str.run_segmenter)
  end
  def test_three_words
    sample_str = StringSegmenter.new("swimrustpublish")
    assert_equal((["swim","rust","publish"]), sample_str.run_segmenter)
  end
end
# Remember, the names of all test methods should begin with "test_".
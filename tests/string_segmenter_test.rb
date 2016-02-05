require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_simple
    sample_input = "speakthiswordordie" 
    sample_run = StringSegmenter.new.run_string_segmenter(sample_input)
    assert_equal(["speak", "this", "word", "or", "die"], sample_run)
  end

  def test_plural
    sample_input = "speakerspartscappingsrationalizes"
    sample_run = StringSegmenter.new.run_string_segmenter(sample_input)
    assert_equal(["speakers", "parts", "cappings", "rationalizes"], sample_run)
  end

  def test_prefix
    sample_input = "apartapartmentpart"
    sample_run = StringSegmenter.new.run_string_segmenter(sample_input)
    assert_equal(["apart", "apartment", "part"], sample_run)
  end

  def test_suffix
    sample_input = "partingpartedcapcappingcaptioncaptioning"
    sample_run = StringSegmenter.new.run_string_segmenter(sample_input)
    assert_equal(["parting", "parted", "cap", "capping", "caption", "captioning"], sample_run)
  end

  def test_word_in_word
    sample_input = "speakersatsthisword"
    sample_run = StringSegmenter.new.run_string_segmenter(sample_input)
    assert_equal(["speak", "ersats", "this", "word"], sample_run)
  end

  def test_blank_str
    sample_input = ""
    sample_run = StringSegmenter.new.run_string_segmenter(sample_input)
    assert_equal([], sample_run)
  end
end

# Remember, the names of all test methods should begin with "test_".

# Possible scenarios:
# plural
# -ing, -tion, -er, -en, -est, -ly, -ize, -ish, -ist, etc.
# complete word within another word

# Given an array of words, with or without spacing, find and pick out only the real words
# 
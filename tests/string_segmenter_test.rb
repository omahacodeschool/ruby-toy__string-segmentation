require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_ing_words
    sample = SplitUpStringIntoWords.new
  	str = "catrunningtrance"

  	assert_equal(["cat", "running", "trance"], sample.segment_string(str))
  end

  def test_plural_words
    sample = SplitUpStringIntoWords.new
  	str = "catsrunningtrance"

  	assert_equal(["cats", "running", "trance"], sample.segment_string(str))
  end

  def test_compoundish_words
    sample = SplitUpStringIntoWords.new
  	str = "publishcatrun"

  	assert_equal(["publish", "cat", "run"], sample.segment_string(str))
  end
  
   def test_simple
    sample = SplitUpStringIntoWords.new
  	str = "catrun"

  	assert_equal(["cat", "run"], sample.segment_string(str))
   end

   def test_complicated
    sample = SplitUpStringIntoWords.new
  	str = "catsurethra"

  	assert_equal(["cats", "urethra"], sample.segment_string(str))
   end

end
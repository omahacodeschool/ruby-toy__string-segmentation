require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_string_with_caps_and_valid_words
    str = "AppleMeaganGuitar"
    result = segment_string(str)
    assert_equal(["apple", "meagan", "guitar"], result)
  end

  def test_string_with_valid_words
    str = "applemeaganguitar"
    result = segment_string(str)
    assert_equal(["apple", "meagan", "guitar"], result)
  end

  def test_string_with_multiple_possible_word_selections
    str = "smilespreadtacohelping"
    result = segment_string(str)
    assert_equal(["smile", "spread", "taco", "helping"], result)
  end

  def test_string_with_invalid_characters
    str = "smilespreaddfgjhhelping"
    result = segment_string(str)
    assert_equal(nil, result)
  end

  def test_string_with_extra_characters
    str = "spreadingsmileguitar"
    result = segment_string(str)
    assert_equal(["spreading", "smile" "guitar"], result)
  end

  #def test_string_with_non_alpha_characters
   # str = "smilespr9.870"
    #result = segment_string(str)
    #assert_equal(nil, result)
  #end

  #def test_string_with_spaces
   # str = "smiles preadhelping"
    #result = segment_string(str)
    #assert_equal(["smiles" "spread", "helping"], result)
  #end

  #Will use later
end
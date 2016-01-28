require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_string_with_capital_letters
    str = "AreYouForReal"
    assert_equal(["are","you","for","real"], segment_string(str))
  end

  def test_string_with_plural_words
    str = "catsgo"
    assert_equal(["cats","go"], segment_string(str))
  end


  def test_string_with_suffix
    str = "biggestreadingimprovedfranticlywoodenhigherattraction"
    assert_equal(["biggest", "reading","improved","franticly","wooden","higher","attraction"], segment_string(str))
  end

    def test_string_with_preffix
    str = "returnuncommonimpossibleirrationalmisprintdisengage"
    assert_equal(["return","uncommon","impossible","irrational","misprint","disengage"], segment_string(str))
  end

    def test_string_with_preffix_and_suffix
    str = "uncomfortableirregularlydisrespectedundisclosed"
    assert_equal(["uncomfortable","irregularly","disrespected","undisclosed"], segment_string(str))
  end
end
# Remember, the names of all test methods should begin with "test_".

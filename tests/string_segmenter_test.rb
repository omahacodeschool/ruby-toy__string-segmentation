require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_string_with_capital_letters
    str = "IWouldBuyYouAnExoticPetLikeALlamaOrAnEmu"
    assert_equal(["I","Would","Buy","You","An","Exotic","Pet","Like","A","Llama","Or","An","Emu"], segment_string(str))
  end

class StringSegmenterTest < Minitest::Test
  def test_string_with_plural_words
    str = "newkidsontheblockhadabunchofhitschinesefoodmakesmesickIthinkitisflywhengirlsstopbyforthesummerforthesummer"
    assert_equal(["new","kids","on","the","block","had","a","bunch","of","hits","chinese","food","makes","me","sick","I","think","it","is","fly","when","girls","stop","by","for","the","summer","for","the","summer"], segment_string(str))
  end
# Remember, the names of all test methods should begin with "test_".

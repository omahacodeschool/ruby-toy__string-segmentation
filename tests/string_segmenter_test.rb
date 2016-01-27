require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_example1
    result = segment_string("turtlebluetraintrust")
    array_result = ["turtle", "blue", "train", "trust"]

    assert_equal(result, array_result)
    
  end

  def test_example2
    result = segment_string("smilesbirthfive")
    array_result = ["smiles", "birth", "five"]

    assert_equal(result, array_result)
  
  end

  def test_monster
    result = segment_string("capscapescanscans")
    array_result = ["caps", "capes", "can", "scans"]
    
    assert_equal(result, array_result)

  end

  def test_ing
    result = segment_string("playingdrinkingjumping")
    array_result = ["playing", "drinking", "jumping"]
    
    assert_equal(result, array_result)

  end

end

# Remember, the names of all test methods should begin with "test_".
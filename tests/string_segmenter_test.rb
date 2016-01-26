require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_segment_string
    string = "dinosaurhobbitbalrog"
    assert_equal(["dinosaur", "hobbit", "balrog"], segment_string(string))
  end
  def test_ings
    string = "roaringeatingburning"
    assert_equal(["roaring", "eating", "burning"], segment_string(string))
  end
  def test_plurals
    string = "dinosaurshobbitsbalrogs"
    assert_equal(["dinosaurs", "hobbits", "balrogs"], segment_string(string))
  end
  def test_eds
    string = "roaredsmokedburned"
    assert_equal(["roared", "smoked", "burned"], segment_string(string))
  end
  def test_ly
    string = "lovelyhighlystupidly"
    assert_equal(["lovely", "highly", "stupidly"], segment_string(string))
  end
  def test_ment
    string = "developmentshipmentmovement"
    assert_equal(["development", "shipment", "movement"], segment_string(string))
  end
end

#Remember, the names of all test methods should begin with "test_".
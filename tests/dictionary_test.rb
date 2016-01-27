require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  
  def test_true
    
    assert_equal(valid_word?("blue"), true)
    
  end
  
  def test_false  

    assert_equal(valid_word?("wombo"), false)

  end
  
end

# Remember, the names of all test methods should begin with "test_".
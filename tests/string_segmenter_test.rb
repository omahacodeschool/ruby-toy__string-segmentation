require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_simple
    assert_equal(["tree"], segment_string("tree"))
  end

  def test_treetree
    assert_equal(["tree", "tree"], segment_string("treetree"))
  end

  def test_yellowleaf
    assert_equal(["yellow", "leaf"], segment_string("yellowleaf"))
  end

  def test_sagebrooms
    assert_equal(["sage", "brooms"], segment_string("sagebrooms"))
  end

  def test_yellowtrees
    assert_equal(["yellow", "trees"], segment_string("yellowtrees"))
  end

end
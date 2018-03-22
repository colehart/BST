require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree.rb'

class NodeTest < Minitest::Test

  def setup
    @node = Node.new
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_stores_score_as_key
  end

  def test_it_stores_name_as_value
  end


end

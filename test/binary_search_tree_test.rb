require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree.rb'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @tree = BinarySearchTree.new
  end

  def test_it_exists
    assert_instance_of BinarySearchTree, @tree
  end

  # insert
  # The insert method adds a new node with the passed-in data. Each node is comprised of a score and a movie title. It returns the depth of the new node in the tree

  # Ex: tree.insert(61, "Bill & Ted's Excellent Adventure")
  # # => 0
  # tree.insert(16, "Johnny English")
  # # => 1
  # tree.insert(92, "Sharknado 3")
  # # => 1
  # tree.insert(50, "Hannibal Buress: Animal Furnace")
  # # => 2
  def test_it_inserts_new_nodes
    assert_equal 0, @tree.insert(61, "Bill & Ted")
    assert_equal 1, @tree.insert(16, "Johnny English")
    assert_equal 1, @tree.insert(92, "Sharknado 3")
    assert_equal 2, @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end

  # include?
  # Verify/reject the presence of a score in the tree:
  #
  # tree.include?(16)
  # # => true
  # tree.include?(72)
  # # => false
  def test_it_stores_inserted_nodes
  skip
    @tree.insert(61, "Bill & Ted")
    @tree.insert(16, "Johnny English")
    @tree.insert(92, "Sharknado 3")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal true, @tree.include?(16)
    assert_equal false, @tree.include?(72)
  end

  # depth_of
  # Reports the depth of the tree where a score appears. Return nil if the score does not exist:
  #
  # tree.depth_of(92)
  # # => 1
  # tree.depth_of(50)
  # # => 2
  def test_it_reports_accurate_depth_of
  skip
    @tree.insert(61, "Bill & Ted")
    @tree.insert(16, "Johnny English")
    @tree.insert(92, "Sharknado 3")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 1, @tree.depth_of(92)
    assert_equal 2, @tree.depth_of(50)
  end

  # max
  # Which movie has the highest score in the list? What is it’s score?
  #
  # tree.max
  # # => {"Sharknado 3"=>92}

  def test_it_can_find_max
  end

  # min
  # Which movie has the lowest score in the list? What is it’s score?
  #
  # tree.min
  # # => {"Johnny English"=>16}

  def test_it_can_find_min
  end

  # sort
  # Return an array of all the movies and scores in sorted ascending order. Return them as an array of hashes. Note: you’re not using Ruby’s Array#sort. You’re traversing the tree.
  #
  # tree.sort
  # # => [{"Johnny English"=>16},
  # #   {"Hannibal Buress: Animal Furnace"=>50},
  # #   {"Bill & Ted's Excellent Adventure"=>61},
  # #  {"Sharknado 3"=>92}]

  def test_it_can_sort
  end

  # load
  # tree.load('movies.txt')
  # # => 99
  # Where the return value is the number of movies inserted into the tree. If a score is already present in the tree when load is called, ignore it.

  def test_it_can_load
  end

  # health
  # Report on the health of the tree by summarizing the number of child nodes (nodes beneath each node) at a given depth. For health, we’re worried about 3 values:
  #
  # Score of the node
  # Total number of child nodes including the current node
  # Percentage of all the nodes that are this node or it’s children
  # tree.insert(98, "Animals United")
  # tree.insert(58, "Armageddon")
  # tree.insert(36, "Bill & Ted's Bogus Journey")
  # tree.insert(93, "Bill & Ted's Excellent Adventure")
  # tree.insert(86, "Charlie's Angels")
  # tree.insert(38, "Charlie's Country")
  # tree.insert(69, "Collateral Damage")
  # tree.health(0)
  # => [[98, 7, 100]]
  # tree.health(1)
  # => [[58, 6, 85]]
  # tree.health(2)
  # => [[36, 2, 28], [93, 3, 42]]
  #Where the return value is an Array with one nested array per node at that level. The nested array is:
  #
  # [score in the node, 1 + number of child nodes, floored percentage of (1+children) over the total number of nodes]
  # When the percentages of two nodes at the same level are dramatically different, like 28 and 42 above, then we know that this tree is starting to become unbalanced.

  def test_it_can_report_health_score
  end

  # leaves
  # A leaf is a node that has no left or right value. How many leaf nodes are on the tree?
  #
  # tree.leaves
  # # => 2

  def test_it_has_leaves
  end

  # height
  # What is the height (aka the maximum depth) of the tree?
  #
  # tree.height
  # # => 3

  def test_it_has_depth
  end 

end

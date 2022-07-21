require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    nodes_to_visit = [@root]

    until nodes_to_visit.empty?
      current = nodes_to_visit.pop
      return current if current[:node] == value

      nodes_to_visit = current[:children] + nodes_to_visit
  
    end
    nil
  end

  def insert(value)
    # your code here
  end

end 

class Tree
  attr_accessor :children, :node_name

  def initialize(treedef = {})
    @node_name = name
    @children = Tree.new treedef.first
  end

  def visit_all(&block)
    visit &block
    @children.each { |n| n.visit_all &block }
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new( "root", 
                     [Tree.new( "foo" ),
                      Tree.new( "bar" )])

puts 'Visiting a node'
ruby_tree.visit { |node| puts node.node_name }
puts 

puts 'Visiting whole tree'
ruby_tree.visit_all { |node| puts node.node_name }
puts

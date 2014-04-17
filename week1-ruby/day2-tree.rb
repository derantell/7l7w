class Tree
  attr_accessor :children, :node_name

  def initialize(treedef = {})
    # Add artificial root when hash contains > 1 entry
    treedef = { 'root' => treedef } if treedef.length > 1

    # Should always be only one entry
    @node_name = treedef.keys.first
    @children = []
    treedef[@node_name].each do |name,children|
       @children.push Tree.new name => children   
    end
  end

  def visit_all(&block)
    visit &block
    @children.each { |n| n.visit_all &block }
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new({
  'foo'=> { 
    'bar' => { 
      'baz' => {}, 
      'quux0' => {}, 
      'quux1' => {
        'brax' => {}
      }, 
      'quux2' => {}, 
      'quux3' => {}, 
      'quux4' => {}, 
    }, 
    'blipp' => {}
  },
  'braxen' => {}
})

puts 'Visiting a node'
ruby_tree.visit { |node| puts node.node_name }
puts 

puts 'Visiting whole tree'
ruby_tree.visit_all { |node| puts node.node_name }
puts

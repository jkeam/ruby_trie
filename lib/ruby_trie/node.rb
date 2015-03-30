class RubyTrie
  class Node
    attr_accessor :value, :parent, :children

    def initialize(value, parent)
      @value = value
      @parent = parent
      @children = {}
    end

    # find node if it exists and add value to it
    def add(value)
      node = get_child value

      # if node doesn't exist
      # add to correct place to cur node
      if node.nil?
        node = Node.new(value, self)
        @children[value.to_sym] = node
      end
      node
    end

    def get_child(value) 
      sym = (value.is_a? Symbol) ? value : value.to_sym
      @children[sym]
    end
  end
end

class RubyTrie
  class Node
    attr_accessor :value, :parent, :children

    # creates node with passed in value and parent.  and empty children
    def initialize(value, parent)
      @value = value
      @parent = parent
      @children = {}
    end

    # find node if it exists or create new node to hold it
    def add(value)
      node = get_node value

      # if node doesn't exist
      # add to correct place to cur node
      if node.nil?
        node = Node.new(value, self)
        @children[value.to_sym] = node
      end
      node
    end

    # gets the node holding this value
    def get_node(value)
      sym = (value.is_a? Symbol) ? value : value.to_sym
      @children[sym]
    end

    # pretty print this
    def to_s
      parent_value = nil
      if @parent
        parent_value = @parent.value
        "{Node: value: #{value}, parent_value: #{parent_value}}"
      else
        "{Node: value: #{value}, parent_value: }"
      end
    end
  end
end

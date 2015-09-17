require 'ruby_trie/node'

class RubyTrie
  class Trie
    attr_reader :root

    # creates a new trie with a root node
    def initialize
      @root = Node.new nil, nil
    end

    # adds word and returns itself to allow chaining
    def add(word)
      return if word.nil? || word.gsub(/\s+/, '') == ''
      root = @root
      letters = word.split('').each do |l|
        root = get_sub_root root, l
      end
      self
    end

    # convenience method to get the first child immediately
    def get_node(value)
      sym = (value.is_a? Symbol) ? value : value.to_sym
      @root.get_node sym
    end

    private

      # when you pass in a root, this will look up the subroot associated with the 
      #   value passed in and will create it if not found
      # returns: the subroot that holds the value for the given root
      def get_sub_root(root, value)
        sym = (value.is_a? Symbol) ? value : value.to_sym
        root.add sym
      end

  end
end

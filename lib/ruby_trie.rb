require 'forwardable'
require 'ruby_trie/trie'

class RubyTrie
  extend Forwardable
  def_delegator :@trie, :add, :add
  def_delegator :@trie, :root, :root
  def_delegator :@trie, :get_node, :get_node

  def initialize
    @trie = Trie.new
  end
end

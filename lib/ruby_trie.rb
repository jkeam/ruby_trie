require 'forwardable'
require 'ruby_trie/trie'

class RubyTrie
  extend Forwardable
  def_delegator :@trie, :add, :add
  def_delegator :@trie, :get_root, :get_root

  def initialize
    @trie = Trie.new
  end
end

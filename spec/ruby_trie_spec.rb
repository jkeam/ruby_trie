require 'test_helper'

describe RubyTrie::Trie do
  before do
    @trie = RubyTrie::Trie.new
  end

  describe "when asked to add" do
    it "must add it" do
      @trie.add 'kitten'
      root = @trie.get_root 'k'

      i_actual = root.get_child 'i'
      i_actual.wont_be_nil

      t_actual = i_actual.get_child 't'
      t_actual.wont_be_nil

      t_actual = t_actual.get_child 't'
      t_actual.wont_be_nil

      e_actual = t_actual.get_child 'e'
      e_actual.wont_be_nil

      n_actual = e_actual.get_child 'n'
      n_actual.wont_be_nil

      m_actual = e_actual.get_child 'm'
      m_actual.must_be_nil
    end

    it "must allow symbols" do
      @trie.add 'kitten'
      root = @trie.get_root :k

      i_actual = root.get_child :i
      i_actual.wont_be_nil

      t_actual = i_actual.get_child :t
      t_actual.wont_be_nil

      t_actual = t_actual.get_child :t
      t_actual.wont_be_nil

      e_actual = t_actual.get_child :e
      e_actual.wont_be_nil

      n_actual = e_actual.get_child :n
      n_actual.wont_be_nil

      m_actual = e_actual.get_child :m
      m_actual.must_be_nil
    end
  end
end

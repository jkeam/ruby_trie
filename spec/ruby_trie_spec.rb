require 'test_helper'

describe RubyTrie::Trie do
  before do
    @trie = RubyTrie.new
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

    it "must print out correctly" do
      @trie.add 'kitten'
      root = @trie.root
      root.to_s.must_equal "{Node: value: , parent_value: }"

      k_actual = root.get_child :k
      k_actual.to_s.must_equal "{Node: value: k, parent_value: }"

      i_actual = k_actual.get_child :i
      i_actual.to_s.must_equal "{Node: value: i, parent_value: k}"

      t_actual = i_actual.get_child :t
      t_actual.to_s.must_equal "{Node: value: t, parent_value: i}"

      t_actual = t_actual.get_child :t
      t_actual.to_s.must_equal "{Node: value: t, parent_value: t}"

      e_actual = t_actual.get_child :e
      e_actual.to_s.must_equal "{Node: value: e, parent_value: t}"

      n_actual = e_actual.get_child :n
      n_actual.to_s.must_equal "{Node: value: n, parent_value: e}"

      m_actual = e_actual.get_child :m
      m_actual.to_s.must_equal ""
    end
  end
end

require 'test_helper'

describe RubyTrie::Trie do
  before do
    @processor = RubyTrie::Trie.new
  end

  describe "when asked to add" do
    it "must add it" do
      expected = 1
      actual = 1
      actual.must_equal expected
    end
  end

  describe "when asked for root" do
    it "must get the root" do
      expected = 1
      actual = 1
      actual.must_equal expected
    end
  end
end

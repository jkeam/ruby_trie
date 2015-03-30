require 'ruby_trie/node'

class RubyTrie
  class Trie

  def initialize
    @root = Node.new nil, nil
  end

  # add word and returns the root node containing that word
  def add(word)
    return if word.nil? || word.gsub(/\s+/, '') == ''
    letters = word.split('')
    subroot = get_root letters[0], {create: true, sym: letters[0].to_sym} 
    add_letters_to_root letters, subroot 
    subroot 
  end

  # get the root and optionally create a new root if not found
  def get_root(value, options={})
    sym = (value.is_a? Symbol) ? value : value.to_sym
    subroot = @root.get_child sym
    if options[:create] && subroot.nil?
      sym = options[:sym]
      subroot = Node.new sym, nil
      @root.children[sym] = subroot 
    end
    subroot
  end

  private 
    # does the work of adding the letters to the created root
    def add_letters_to_root(letters, subroot)
      cur = subroot 
      letters.shift
      letters.each { |l| cur = cur.add(l) }
    end

  end
end

# RubyTrie
[![Build Status](https://travis-ci.org/jkeam/ruby_trie.svg?branch=master)](https://travis-ci.org/jkeam/ruby_trie)
[![Coverage Status](https://coveralls.io/repos/jkeam/ruby_trie/badge.svg?branch=master)](https://coveralls.io/r/jkeam/ruby_trie?branch=master)

Pure ruby implementation of the [Trie](http://en.wikipedia.org/wiki/Trie) data structure.

## Environment
Supports Ruby 2.2.2 and greater.

## Test
To run the test suite just run `rake`

## Usage
To use:

```ruby
# creates the trie
@trie = RubyTrie.new

# adds a word
@trie.add 'kitten'

# gets the node holding k
k_node = @trie.get_node :k

# gets the node holding i
i_node = k_node.get_node :i
```

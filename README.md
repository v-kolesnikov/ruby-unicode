# Ruby::Unicode

[clojure.unicode](https://github.com/tonsky/clojure.unicode) port to Ruby.

## Installation

Installation is available from GitHub only.

## Usage

See [specs](spec/ruby_unicode_spec.rb) or play in IRB:

```ruby

require 'ruby-unicode'
include RubyUnicode

≠ 1, 2          # => true
¬ false         # => true
∧ true, false   # => false
∨ true, false   # => true

× 1, 2, 3       # => 6
÷ 1, 2          # => 1/2r
− 1             # =>(-1)
≤ 1, 2, 2, 3    # => true
≥ 4, 2, 2, 0    # => true
≡ 1, 1, 1       # => true
≢ 1, 1, 2       # => true
∞ > 1           # => true
∑ 0...5         # => 10
∏ 1...5         # => 24

∋ Set[1, 2, 3], 1 # => true
∌ Set[1, 2, 3], 5 # => true
∈ 1, Set[1, 2, 3] # => true
∉ 5, Set[1, 2, 3] # => true

∀ :odd?, Set[1, 5, 3] # => true
∃ :even?, [1, 2, 3]   # => true
∄ :even?, [1, 5, 3]   # => true

∪ Set[1, 2], Set[2, 3]  # => Set[1, 3, 2]
∩ Set[1, 2], Set[2, 3]  # => Set[2]
⊆ Set[2], Set[1, 2, 3]  # => true
⊇ Set[1, 2], Set[1]     # => true
⊈ Set[1, 2], Set[1, 3]  # => true
⊉ Set[1, 2], Set[1, 3]  # => true
∋ ∅, 1                  # => false
∖ Set[1, 2, 3], Set[3]  # => Set[1, 2]

λ { |x| x + 1 }[1]  # => 2
λ(&:succ)[1]        # => 2
(∘ :to_s, :succ)[1] # => '2'
```

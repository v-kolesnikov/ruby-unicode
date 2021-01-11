# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RubyUnicode do
  include RubyUnicode

  it { expect(≠ 1, 2).to eq true }
  it { expect(¬ false).to eq true }
  it { expect(∧ true, false).to eq false }
  it { expect(∨ true, false).to eq true }
  it { expect(× 1, 2, 3).to eq 6 }
  it { expect(÷ 1, 2).to eq 1/2r }
  it { expect(− 1).to eq(-1) }
  it { expect(≤ 1, 2, 2, 3).to eq true }
  it { expect(≥ 4, 2, 2, 0).to eq true }
  it { expect(≡ 1, 1, 1).to eq true }
  it { expect(≢ 1, 1, 2).to eq true }
  it { expect(∞ > 1).to eq true }
  it { expect(∑ 0...5).to eq 10 }
  it { expect(∏ 1...5).to eq 24 }
  it { expect(∋ Set[1, 2, 3], 1).to eq true }
  it { expect(∌ Set[1, 2, 3], 5).to eq true }
  it { expect(∈ 1, Set[1, 2, 3]).to eq true }
  it { expect(∉ 5, Set[1, 2, 3]).to eq true }
  it { expect(∀ :odd?, Set[1, 5, 3]).to eq true }
  it { expect(∃ :even?, [1, 2, 3]).to eq true }
  it { expect(∄ :even?, [1, 5, 3]).to eq true }
  it { expect(∪ Set[1, 2], Set[2, 3]).to eq Set[1, 3, 2] }
  it { expect(∩ Set[1, 2], Set[2, 3]).to eq Set[2] }
  it { expect(⊆ Set[2], Set[1, 2, 3]).to eq true }
  it { expect(⊇ Set[1, 2], Set[1]).to eq true }
  it { expect(⊈ Set[1, 2], Set[1, 3]).to eq true }
  it { expect(⊉ Set[1, 2], Set[1, 3]).to eq true }
  it { expect(∋ ∅, 1).to eq false }
  it { expect(∖ Set[1, 2, 3], Set[3]).to eq Set[1, 2] }
  it { expect(λ { |x| x + 1 }[1]).to eq 2 }
  it { expect(λ(&:succ)[1]).to eq 2 }
  it { expect((∘ :to_s, :succ)[1]).to eq '2' }
end

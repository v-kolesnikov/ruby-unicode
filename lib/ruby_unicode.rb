# frozen_string_literal: true

require 'ruby_unicode/version'
require 'set'

module RubyUnicode
  module_function

  def ≠ x, y
    x != y
  end

  def ¬ x
    !x
  end

  def ∧ x, y
    x && y
  end

  def ∨ x, y
    x || y
  end

  def × *args
    args.reduce(:*)
  end

  def ÷ x, y
    x / y.to_r
  end

  def − x
    -x
  end

  def ≤ *args
    args.each_cons(2).all? { |x, y| x <= y }
  end

  def ≥ *args
    args.each_cons(2).all? { |x, y| x >= y }
  end

  def ≡ *args
    args.each_cons(2).all? { |x, y| x == y }
  end

  def ≢ *args
    args.each_cons(2).any? { |x, y| x != y }
  end

  def ∞
    ::Float::INFINITY
  end

  def ∑ range
    range.sum
  end

  def ∏ range
    range.reduce(:*)
  end

  def ∋ set, x
    set.include? x
  end

  def ∌ set, x
    !set.include? x
  end

  def ∈ x, set
    set.include? x
  end

  def ∉ x, set
    !set.include? x
  end

  def ∀ f, set
    set.all?(f)
  end

  def ∃ f, set
    set.any?(f)
  end

  def ∄ f, set
    set.none?(f)
  end

  def ∪ x, y
    x | y
  end

  def ∩ x, y
    x & y
  end

  def ⊆ x, y
    Set.new(x).subset?(Set.new(y))
  end

  def ⊇ x, y
    Set.new(x).superset?(Set.new(y))
  end

  def ⊈ x, y
    ¬(⊆ x, y)
  end

  def ⊉ x, y
    ¬(⊇ x, y)
  end

  def ∅
    Set[]
  end

  def ∖ x, y
    Set.new(x).difference(y)
  end

  def λ &block
    Proc.new(&block)
  end

  def ∘ *procs
    procs.reduce(&:>>)
  end
end

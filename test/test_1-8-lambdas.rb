require 'minitest/autorun'
require_relative '../1-8-lambdas.rb'

class TestContainsEven < Minitest::Test
  def test_empty
    assert !contains_even([])
  end
  def test_simple
    assert !contains_even([1])
    assert contains_even([2])
  end
  def test_multiple
    assert contains_even([1, 2])
  end
end


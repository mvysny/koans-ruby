require 'minitest/autorun'
require_relative '../2-2-smart-casts.rb'

class TestNumSum < Minitest::Test
  def test_num_calculate
    assert_equal 5, Num.new(5).calculate
  end
  def test_sum_calculate
    assert_equal 8, Sum.new(Num.new(5), Num.new(3)).calculate
  end
end


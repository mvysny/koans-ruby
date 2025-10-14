require 'minitest/autorun'
require_relative '../3-3-forloop.rb'

class TestForLoop < Minitest::Test
  def test_date_range
    dr = DateRange.new(MyDate.new(2024, 1, 1), MyDate.new(2024, 1, 5))
    assert_equal "2024-1-1,2024-1-2,2024-1-3,2024-1-4,2024-1-5", dr.to_a.join(',')
    assert_equal "2024-1-1,2024-1-2,2024-1-3,2024-1-4,2024-1-5", dr.each.to_a.join(',')
  end
  def test_iterate_over_date_range
    d1 = MyDate.new(2024, 1, 1)
    d2 = MyDate.new(2024, 1, 5)
    assert_equal "2024-1-1,2024-1-2,2024-1-3,2024-1-4,2024-1-5", iterate_over_date_range(d1, d2).to_a.join(',')
    arr = []
    iterate_over_date_range(d1, d2) { arr << it }
    assert_equal "2024-1-1,2024-1-2,2024-1-3,2024-1-4,2024-1-5", arr.join(',')
  end
end


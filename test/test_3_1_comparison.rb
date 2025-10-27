# frozen_string_literal: true

require 'minitest/autorun'
require '3_1_comparison'

class MyDateTest < Minitest::Test
  def test_compare
    date1 = MyDate.new(2024, 1, 1)
    date2 = MyDate.new(2024, 1, 2)
    date3 = MyDate.new(2025, 1, 1)
    date4 = MyDate.new(2024, 2, 1)

    assert date1 < date2
    assert !(date1 == date2)
    assert !(date1 > date2)
    assert date2 < date3
    assert !(date2 == date3)
    assert !(date2 > date3)
    assert date2 < date4
    assert !(date2 == date4)
    assert !(date2 > date4)
  end

  def test_succ
    assert_equal MyDate.new(2024, 1, 2), MyDate.new(2024, 1, 1).succ
    assert_equal MyDate.new(2024, 2, 1), MyDate.new(2024, 1, 31).succ
    assert_equal MyDate.new(2025, 1, 1), MyDate.new(2024, 12, 31).succ
  end
end

# frozen_string_literal: true

require 'minitest/autorun'
require '3_4_operators'

class TestOperators < Minitest::Test
  def test_plus_days
    assert_equal MyDate.new(2024, 1, 2), (MyDate.new(2024, 1, 1) + 1)
  end

  def test_plus_day
    assert_equal MyDate.new(2024, 1, 2), (MyDate.new(2024, 1, 1) + :day)
  end

  def test_plus_week
    assert_equal MyDate.new(2024, 1, 8), (MyDate.new(2024, 1, 1) + :week)
  end

  def test_plus_year_week
    assert_equal MyDate.new(2025, 1, 8), (MyDate.new(2024, 1, 1) + :year + :week)
  end

  def test_plus_duration
    assert_equal MyDate.new(2026, 1, 27),
                 (MyDate.new(2024, 1, 1) + MyDuration::YEAR * 2 + MyDuration::WEEK * 3 + MyDuration::DAY * 5)
  end
end

require 'minitest/autorun'
require '3-2-ranges.rb'

class MyDateRangeTest < Minitest::Test
  def test_include
    r = (MyDate.new(2024, 1, 1)..MyDate.new(2024, 1, 10))
    assert !(r.include? MyDate.new(2025, 1, 5))
    assert(r.include? MyDate.new(2024, 1, 5))
  end
end


require 'minitest/autorun'
require '4-2-sort'

class TestSort < Minitest::Test
  def test_customers_sorted_by_order
    assert_equal 'Matti, Jouni', SHOPS[0].customers_sorted_by_order.map(&:name).join(', ')
    assert_equal 'John, Paul', SHOPS[1].customers_sorted_by_order.map(&:name).join(', ')
  end
end

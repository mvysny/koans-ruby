require 'minitest/autorun'
require '4-2-sort.rb'

class TestSort < Minitest::Test
  def test_get_customers_sorted_by_order
    assert_equal "Jouni, Matti", SHOPS[0].get_customers_sorted_by_order.map { it.name } .join(', ')
    assert_equal "Matti, Jouni", SHOPS[1].get_customers_sorted_by_order.map { it.name } .join(', ')
  end
end


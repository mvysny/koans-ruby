# frozen_string_literal: true

require 'minitest/test'
require '4_7_partition'

class TestGroupBy < Minitest::Test
  def test_customers_with_more_undelivered_orders
    assert_equal ['Jouni'], KMARKET.customers_with_more_undelivered_orders.map(&:name)
    assert_equal Set.new, SMARKET.customers_with_more_undelivered_orders
  end
end

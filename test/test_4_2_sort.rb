# frozen_string_literal: true

require 'minitest/autorun'
require '4_2_sort'

class TestSort < Minitest::Test
  def test_customers_sorted_by_order
    assert_equal 'Jouni, Matti', SHOPS[0].customers_sorted_by_order.map(&:name).join(', ')
    assert_equal 'Matti, Jouni', SHOPS[1].customers_sorted_by_order.map(&:name).join(', ')
  end
end

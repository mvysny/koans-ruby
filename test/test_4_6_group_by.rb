# frozen_string_literal: true

require 'minitest/test'
require '4_6_group_by'

class TestGroupBy < Minitest::Test
  def test_group_customers_by_city
    a = KMARKET.group_customers_by_city
    assert_equal(['Jouni'], a[HELSINKI].map { it.name })
    assert_equal(['Matti'], a[TURKU].map { it.name })
  end
end

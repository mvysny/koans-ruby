# frozen_string_literal: true

require 'minitest/test'
require '4_6_group_by'

class TestGroupBy < Minitest::Test
  def test_group_customers_by_city
    a = KMARKET.group_customers_by_city
    assert_equal 1, a[HELSINKI].size
    assert_equal 1, a[TURKU].size
  end
end

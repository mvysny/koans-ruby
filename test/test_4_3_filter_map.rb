# frozen_string_literal: true

require 'minitest/autorun'
require '4_3_filter_map'

class TestFilterMap < Minitest::Test
  def test_customer_cities
    assert_equal %w[Turku Helsinki], SHOPS[0].customer_cities.map(&:name)
    assert_equal %w[Turku Helsinki], SHOPS[1].customer_cities.map(&:name)
  end

  def test_get_customers_from
    assert_equal ['Jouni'], SHOPS[0].get_customers_from(HELSINKI).map(&:name)
    assert_equal ['Matti'], SHOPS[0].get_customers_from(TURKU).map(&:name)
    assert_equal ['Jouni'], SHOPS[1].get_customers_from(HELSINKI).map(&:name)
    assert_equal ['Matti'], SHOPS[1].get_customers_from(TURKU).map(&:name)
  end
end

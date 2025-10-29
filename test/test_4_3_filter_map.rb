# frozen_string_literal: true

require 'minitest/autorun'
require '4_3_filter_map'

class TestFilterMap < Minitest::Test
  def test_customer_cities
    assert_equal 'Turku, Helsinki', SHOPS[0].customer_cities.map(&:name).join(', ')
    assert_equal 'Turku, Helsinki', SHOPS[1].customer_cities.map(&:name).join(', ')
  end

  def test_get_customers_from
    assert_equal 'Jouni', SHOPS[0].get_customers_from(HELSINKI).map(&:name).join(', ')
    assert_equal 'Matti', SHOPS[0].get_customers_from(TURKU).map(&:name).join(', ')
    assert_equal 'Jouni', SHOPS[1].get_customers_from(HELSINKI).map(&:name).join(', ')
    assert_equal 'Matti', SHOPS[1].get_customers_from(TURKU).map(&:name).join(', ')
  end
end

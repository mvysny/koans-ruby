require 'minitest/autorun'
require '4-3-filter-map.rb'

class TestFilterMap < Minitest::Test
  def test_get_customer_cities
    assert_equal "Turku, Helsinki", SHOPS[0].get_customer_cities.map { it.name } .join(', ')
    assert_equal "Turku, Helsinki", SHOPS[1].get_customer_cities.map { it.name } .join(', ')
  end
  def test_get_customers_from
    assert_equal "Jouni", SHOPS[0].get_customers_from(HELSINKI).map { it.name } .join(', ')
    assert_equal "Matti", SHOPS[0].get_customers_from(TURKU).map { it.name } .join(', ')
    assert_equal "Jouni", SHOPS[1].get_customers_from(HELSINKI).map { it.name } .join(', ')
    assert_equal "Matti", SHOPS[1].get_customers_from(TURKU).map { it.name } .join(', ')
  end
end


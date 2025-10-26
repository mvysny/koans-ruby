require 'minitest/test'
require '4_4_all_any'

class TestAllAny < Minitest::Test
  def test_all_customers_from
    assert !KMARKET.all_customers_from?(TURKU)
    assert !KMARKET.all_customers_from?(HELSINKI)
  end

  def test_has_customer_from
    assert KMARKET.has_customer_from?(TURKU)
    assert SMARKET.has_customer_from?(TURKU)
    assert KMARKET.has_customer_from?(HELSINKI)
    assert SMARKET.has_customer_from?(HELSINKI)
  end

  def test_count_customers_from
    assert_equal 1, KMARKET.count_customers_from(TURKU)
    assert_equal 1, KMARKET.count_customers_from(HELSINKI)
  end

  def test_find_customer_from
    assert_equal 'Matti', KMARKET.find_customer_from(TURKU).name
    assert_nil KMARKET.find_customer_from(PRAGUE)
  end
end

require 'minitest/test'
require '4_4_all_any'

class TestAllAny < Minitest::Test
  def test_all_customers_from
    assert !KMARKET.all_customers_from?(TURKU)
    assert !KMARKET.all_customers_from?(HELSINKI)
  end
end

require 'minitest/test'
require '4_5_associate'

class TestAssociate < Minitest::Test
  def test_name_to_customer_map
    assert_equal 'Jouni', SMARKET.name_to_customer_map['Jouni']&.name
    assert_nil KMARKET.name_to_customer_map['Carl']&.name
  end

  def test_customer_to_city_map
    assert_equal HELSINKI, SMARKET.customer_to_city_map[SMARKET.customer_by_name('Jouni')]
  end

  def test_customer_name_to_city_map
    assert_equal HELSINKI, SMARKET.customer_name_to_city_map['Jouni']
  end
end

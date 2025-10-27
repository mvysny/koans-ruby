require 'minitest/test'
require '4_5_associate'

class TestAssociate < Minitest::Test
  def test_name_to_customer_map
    assert_equal 'Jouni', SMARKET.name_to_customer_map['Jouni']&.name
    assert_nil KMARKET.name_to_customer_map['Carl']&.name
  end
end

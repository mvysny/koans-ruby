require 'minitest/autorun'
require '4_1_introduction'

class TestIntroduction < Minitest::Test
  def test_customer_set
    assert_equal 'Matti, Jouni', SHOPS[0].customer_set.map { it.name }.join(', ')
    assert_equal 'Matti, Jouni', SHOPS[1].customer_set.map { it.name }.join(', ')
  end
end

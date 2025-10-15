require 'minitest/autorun'
require '4-1-introduction.rb'

class TestIntroduction < Minitest::Test
  def test_get_set_of_customers
    assert_equal "Matti, Jouni", SHOPS[0].get_set_of_customers.map { it.name } .join(', ')
    assert_equal "Matti, Jouni", SHOPS[1].get_set_of_customers.map { it.name } .join(', ')
  end
end


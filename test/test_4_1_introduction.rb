# frozen_string_literal: true

require 'minitest/autorun'
require '4_1_introduction'

class TestIntroduction < Minitest::Test
  def test_customer_set
    assert_equal 'Matti, Jouni', SMARKET.set_of_customers.map(&:name).join(', ')
    assert_equal 'Matti, Jouni', KMARKET.set_of_customers.map(&:name).join(', ')
  end
end

# frozen_string_literal: true

require 'minitest/autorun'
require '1_1_hello_world'

class TestStart < Minitest::Test
  def test_start
    assert_equal 'OK', start
  end
end

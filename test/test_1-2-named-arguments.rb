require 'minitest/autorun'
require_relative '../1-2-named-arguments.rb'

class TestStart < Minitest::Test
  def test_join_options
    assert_equal '[a, b, c]', join_options(['a', 'b', 'c'])
  end
end


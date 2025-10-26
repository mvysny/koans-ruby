require 'minitest/autorun'
require '1_2_named_arguments'

class TestStart < Minitest::Test
  def test_join_options
    assert_equal '[a, b, c]', join_options(%w[a b c])
  end
end

require 'minitest/autorun'
require '1_3_default_args'

class TestFoo < Minitest::Test
  def test_use_foo
    assert_equal %w[a42 b1 C42 D2], use_foo
  end
end

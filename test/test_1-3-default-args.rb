require 'minitest/autorun'
require '1-3-default-args.rb'

class TestFoo < Minitest::Test
  def test_use_foo
    assert_equal ["a42", "b1", "C42", "D2"], use_foo()
  end
end


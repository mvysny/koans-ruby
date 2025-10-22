require 'minitest/autorun'
require '1-1-hello-world'

class TestStart < Minitest::Test
  def test_start
    assert_equal 'OK', start
  end
end

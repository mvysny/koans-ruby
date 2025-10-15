require 'minitest/autorun'
require_relative '../1-1-hello-world.rb'

class TestStart < Minitest::Test
  def test_start
    assert_equal "OK", start()
  end
end


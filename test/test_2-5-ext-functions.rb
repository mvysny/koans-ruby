require 'minitest/autorun'
require '2-5-ext-functions.rb'

class TestExtFunctions < Minitest::Test
  def test_simple
    assert_equal 5.0, RationalNumber.of(5).to_f
    assert_equal 5.0, 5.to_rn.to_f
  end
  def test_complex
    assert_equal 2.0, RationalNumber.new(10, 5).to_f
    assert_equal 2.0, [10, 5].to_rn.to_f
  end
end


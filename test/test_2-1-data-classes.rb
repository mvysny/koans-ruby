require 'minitest/autorun'
require '2-1-data-classes.rb'

class TestPeople < Minitest::Test
  def test_get_people
    assert_equal "Alice:29, Bob:31", get_people().map { "#{it.name}:#{it.age}" } .join(", ")
  end
  def test_compare_people
    assert compare_people()
  end
end


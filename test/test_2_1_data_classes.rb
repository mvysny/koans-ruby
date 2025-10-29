# frozen_string_literal: true

require 'minitest/autorun'
require '2_1_data_classes'

class TestPeople < Minitest::Test
  def test_people
    assert_equal 'Alice:29, Bob:31', people.map { "#{it.name}:#{it.age}" }.join(', ')
  end

  def test_compare_people
    assert compare_people
  end
end

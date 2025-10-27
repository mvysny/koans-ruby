# frozen_string_literal: true

# A person with a {String} `name` and {Integer} `age`
class Person < Data.define(:name, :age)
end

# @return [Array<Person>] a demo set of people
def get_people
  [Person.new('Alice', 29), Person.new('Bob', 31)]
end

# @return [Boolean] true if {Person} comparison works properly.
def compare_people
  p1 = Person.new('Alice', 29)
  p2 = Person.new('Alice', 29)
  p1 == p2
end

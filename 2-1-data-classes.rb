Person = Data.define(:name, :age)
def get_people
  [Person.new("Alice", 29), Person.new("Bob", 31)]
end
def compare_people
  p1 = Person.new("Alice", 29)
  p2 = Person.new("Alice", 29)
  return p1 == p2
end

puts get_people
puts compare_people


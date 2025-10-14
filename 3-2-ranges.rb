require_relative '3-1-comparison.rb'

r = (MyDate.new(2024, 1, 1)..MyDate.new(2024, 1, 10))
puts r
puts r.include? MyDate.new(2025, 1, 5)


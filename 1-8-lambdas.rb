def containsEven(collection)
  collection.any? { it.even? }
end

puts containsEven [1]
puts containsEven [2]
puts containsEven [1, 2]


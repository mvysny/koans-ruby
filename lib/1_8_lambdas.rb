# Returns true if given collection contains even numbers
# @param collection [Array<Integer>] numbers to check
# @return [Boolean] true if any of given numbers is even
def contains_even(collection)
  collection.any?(&:even?)
end

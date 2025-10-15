# A numeric expression, which simply causes {#calculate} to return `value`.
class Num < Data.define(:value)
  # Returns `value`
  def calculate
    value
  end
end

# Calculates sum of two expressions, `left` and `right`.
class Sum < Data.define(:left, :right)
  # Returns the sum of `left` and `right`
  def calculate
    left.calculate + right.calculate
  end
end


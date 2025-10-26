# A numeric expression, which simply causes {#calculate} to return `value`.
class Num < Data.define(:value)
  # Returns `value`
  def calculate
    value
  end
end

# Calculates sum of two expressions, `left` and `right`, both responding to `#calculate`
class Sum < Data.define(:left, :right)
  # Returns the sum of `left#calculate` and `right#calculate`
  def calculate
    left.calculate + right.calculate
  end
end

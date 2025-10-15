Num = Data.define(:value)
# A numeric expression, which simply causes {#calculate} to return `value`.
class Num
  # Returns `value`
  def calculate
    value
  end
end

Sum = Data.define(:left, :right)
# Calculates sum of two expressions, `left` and `right`.
class Sum
  # Returns the sum of `left` and `right`
  def calculate
    left.calculate + right.calculate
  end
end


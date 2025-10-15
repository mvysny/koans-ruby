class Num < Data.define(:value)
  def calculate
    value
  end
end

class Sum < Data.define(:left, :right)
  def calculate
    left.calculate + right.calculate
  end
end


class RationalNumber < Data.define(:numerator, :denominator)
  def initialize(args)
    super
    raise ArgumentError, "#{numerator}: not a Numeric" unless numerator.is_a? Numeric
    raise ArgumentError, "#{denominator}: not a Numeric" unless denominator.is_a? Numeric
  end
  def self.of(number)
    return number if number.is_a? RationalNumber
    return RationalNumber.new(number, 1)
  end
  def to_f
    numerator.to_f / denominator.to_f
  end
end

class Numeric
  def to_rn
    RationalNumber.new(self, 1)
  end
end

class Array
  def to_rn
    RationalNumber.new(self[0], self[1])
  end
end


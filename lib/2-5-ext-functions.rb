RationalNumber = Data.define(:numerator, :denominator)
# A rational number with a `numerator` and `denominator`, both {Numeric}.
class RationalNumber
  def initialize(args)
    super
    raise ArgumentError, "#{numerator}: not a Numeric" unless numerator.is_a? Numeric
    raise ArgumentError, "#{denominator}: not a Numeric" unless denominator.is_a? Numeric
  end
  # Creates {RationalNumber} from given number.
  # @param number [RationalNumber, Numeric] the number to represent.
  # @return [RationalNumber]
  def self.of(number)
    return number if number.is_a? RationalNumber
    return RationalNumber.new(number, 1)
  end
  # Returns the float value of this rational number.
  # @return [Float]
  def to_f
    numerator.to_f / denominator.to_f
  end
end

class Numeric
  # Converts this number to {RationalNumber}.
  # @return [RationalNumber]
  def to_rn
    RationalNumber.new(self, 1)
  end
end

class Array
  # Expects to be called on an array of two {Numeric}s - returns {RationalNumber}
  # with `nominator` being the first item of this array, and `denominator` being the second item.
  # @return [RationalNumber]
  def to_rn
    RationalNumber.new(self[0], self[1])
  end
end


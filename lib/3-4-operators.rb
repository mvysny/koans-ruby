require_relative '3-1-comparison.rb'

# A simple duration implementation of given number of `years` and `days` (both Numeric).
class MyDuration < Data.define(:years, :days)
  DAY = MyDuration.new(0, 1)
  WEEK = MyDuration.new(0, 7)
  YEAR = MyDuration.new(1, 0)

  # Initializes new MyDuration.
  #
  # @param years [Numeric] the number of years
  # @param days [Numeric] the number of days
  # @raise [ArgumentError] if years or days is not Numeric
  def initialize(map)
    super
    raise ArgumentError, "years must be numeric: #{years}" unless years.is_a? Numeric
    raise ArgumentError, "days must be numeric: #{days}" unless days.is_a? Numeric
  end

  # Creates MyDuration out of a symbol
  #
  # @param symbol [Symbol] one of `:day`, `:week`, `:year`
  def self.of(symbol)
    return MyDuration::DAY if symbol == :day
    return MyDuration::WEEK if symbol == :week
    return MyDuration::YEAR if symbol == :year
    raise ArgumentError, "#{other}: unsupported value"
  end
  # Creates MyDuration that's x-times larger (or smaller).
  #
  # @param multiplier [Numeric] the multiplier
  def *(multiplier)
    MyDuration.new(years * multiplier, days * multiplier)
  end
  def +(other)
    MyDuration.new(years + other.years, days + other.days)
  end
end

class MyDate
  # Returns a new date x days in the future (or past if x is negative)
  #
  # @param days [Numeric] how many days to add. May be negative.
  def plus_days(days)
    date = to_date + days
    return MyDate.new(date.year, date.month, date.day)
  end
  # Returns a new date x days in the future (or past if x is negative)
  #
  # @param other [Numeric, MyDuration, Symbol] If Numeric, interpreted as number of days. May also be MyDuration or one of the following symbols: `:day`, `:week`, `:year`
  def +(other)
    other = MyDuration.of(other) if other.is_a? Symbol
    return plus_days(other) if other.is_a? Numeric
    return MyDate.new(year + other.years, month, day_of_month).plus_days(other.days) if other.is_a? MyDuration
    raise ArgumentError, "#{other}: unsupported value"
  end
end


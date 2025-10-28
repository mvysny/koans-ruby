# frozen_string_literal: true

require '3_1_comparison'

# A simple duration implementation of given number of `years` and `days` (both {Numeric}).
class MyDuration < Data.define(:years, :days)
  DAY = new(0, 1)
  WEEK = new(0, 7)
  YEAR = new(1, 0)

  def initialize(values)
    super
    raise ArgumentError, "years must be numeric: #{years}" unless years.is_a? Numeric
    raise ArgumentError, "days must be numeric: #{days}" unless days.is_a? Numeric
  end

  # Creates {MyDuration} out of a symbol
  # @param symbol [Symbol] one of `:day`, `:week`, `:year`
  # @return [MyDuration]
  def self.of(symbol)
    return MyDuration::DAY if symbol == :day
    return MyDuration::WEEK if symbol == :week
    return MyDuration::YEAR if symbol == :year

    raise ArgumentError, "#{other}: unsupported value"
  end

  # Creates {MyDuration} that's x-times larger (or smaller).
  # @param multiplier [Numeric] the multiplier
  # @return [MyDuration]
  def *(other)
    MyDuration.new(years * other, days * other)
  end

  # Adds two {MyDuration}s together.
  # @param other [MyDuration] the other duration to add to this one
  # @return [MyDuration] a new duration, a sum of `self` and `other`.
  def +(other)
    MyDuration.new(years + other.years, days + other.days)
  end
end

class MyDate
  # Returns a new date x days in the future (or past if x is negative)
  # @param days [Numeric] how many days to add. May be negative.
  # @return [MyDate]
  def plus_days(days)
    date = to_date + days
    MyDate.new(date.year, date.month, date.day)
  end

  # Returns a new date x days in the future (or past if x is negative)
  # @param other [Numeric, MyDuration, Symbol] If {Numeric}, interpreted as number of days. May also be {MyDuration}
  # or one of the following symbols: `:day`, `:week`, `:year`
  # @return [MyDate]
  def +(other)
    other = MyDuration.of(other) if other.is_a? Symbol
    return plus_days(other) if other.is_a? Numeric
    return MyDate.new(year + other.years, month, day_of_month).plus_days(other.days) if other.is_a? MyDuration

    raise ArgumentError, "#{other}: unsupported value"
  end
end

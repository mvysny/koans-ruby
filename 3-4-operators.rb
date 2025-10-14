require_relative '3-1-comparison.rb'

class MyDuration < Data.define(:years, :days)
  DAY = MyDuration.new(0, 1)
  WEEK = MyDuration.new(0, 7)
  YEAR = MyDuration.new(1, 0)
  def self.of(symbol)
    return MyDuration::DAY if symbol == :day
    return MyDuration::WEEK if symbol == :week
    return MyDuration::YEAR if symbol == :year
    raise ArgumentError, "#{other}: unsupported value"
  end
  def *(number)
    MyDuration.new(years * number, days * number)
  end
  def +(other)
    MyDuration.new(years + other.years, days + other.days)
  end
end

class MyDate
  # Returns a new date x days in the future (or past if x is negative)
  # +days+:: how many days to add, +Numeric+. May be negative.
  def plus_days(days)
    date = to_date + days
    return MyDate.new(date.year, date.month, date.day)
  end
  # Returns a new date x days in the future (or past if x is negative)
  # +other+:: If +Numeric+, interpreted as number of days. May also be +MyDuration+ or one of the following symbols: :day, :week, :year
  def +(other)
    other = MyDuration.of(other) if other.is_a? Symbol
    return plus_days(other) if other.is_a? Numeric
    return MyDate.new(year + other.years, month, day_of_month).plus_days(other.days) if other.is_a? MyDuration
    raise ArgumentError, "#{other}: unsupported value"
  end
end


require_relative '3-1-comparison.rb'

class MyDate
  def plus_days(days)
    date = to_date + days
    return MyDate.new(date.year, date.month, date.day)
  end
  def +(other)
    return plus_days(other) if other.is_a? Numeric
    return plus_days(1) if other == :day
    return plus_days(7) if other == :week
    return MyDate.new(year + 1, month, day_of_month) if other == :year
    raise ArgumentError, "#{other}: unsupported value"
  end
end


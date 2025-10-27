# frozen_string_literal: true

require 'date'

# A day in a year, has `year`, `month` and `day_of_month`, all {Integer}s.
class MyDate < Data.define(:year, :month, :day_of_month)
  include Comparable
  def <=>(other)
    result = year <=> other.year
    result = month <=> other.month if result == 0
    result = day_of_month <=> other.day_of_month if result == 0
    result
  end

  # Converts this to Date
  # @return [Date] Ruby Date object.
  def to_date
    Date.new(year, month, day_of_month)
  end

  # Returns the next day.
  # @return [MyDate] the next day.
  def succ
    days_in_this_month = Date.new(year, month, -1).day
    new_year = year
    new_month = month
    new_day_of_month = day_of_month + 1
    if new_day_of_month >= days_in_this_month
      new_day_of_month = 1
      new_month += 1
      if new_month > 12
        new_month = 1
        new_year += 1
      end
    end
    MyDate.new(new_year, new_month, new_day_of_month)
  end

  def to_s
    "#{year}-#{month}-#{day_of_month}"
  end
end

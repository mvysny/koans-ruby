# frozen_string_literal: true

require '3_2_ranges'

# A range between two dates, `_start` and `_end`, both {MyDate}, inclusive.
class DateRange < Data.define(:_start, :_end)
  include Enumerable
  def each
    return to_enum(:each) unless block_given?

    (_start.._end).each { yield it }
    self
  end
end

# Iterates over all dates between `first` and `last`, inclusive.
# @param first [MyDate] the first date to return
# @param last [MyDate] the last date to return
def iterate_over_date_range(first, last)
  return to_enum(:iterate_over_date_range, first, last) unless block_given?

  (first..last).each { yield it }
end

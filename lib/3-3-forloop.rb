require_relative '3-2-ranges.rb'

class DateRange < Data.define(:_start, :_end)
  include Enumerable
  def each
    return to_enum(:each) unless block_given?
    (_start.._end).each { yield it }
    self
  end
end

def iterate_over_date_range(first, last)
  return to_enum(:iterate_over_date_range, first, last) unless block_given?
  (first..last).each { yield it }
end



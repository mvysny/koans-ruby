# frozen_string_literal: true

require '4_1_shop'

class Shop
  # Returns a list of customers, sorted in the descending by number of orders they have made
  # @return [Array<Customer>]
  def customers_sorted_by_order
    customers.sort_by { -it.orders.size }
  end
end

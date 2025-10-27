# frozen_string_literal: true

require '4_1_shop'

class Shop
  # Returns the set of customers
  # @return [Set<Customer>]
  def customer_set
    customers.to_set
  end
end

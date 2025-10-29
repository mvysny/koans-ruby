# frozen_string_literal: true

require '4_1_shop'

class Shop
  # Returns the set of customers
  # @return [Set<Customer>]
  def set_of_customers
    customers.to_set
  end
end

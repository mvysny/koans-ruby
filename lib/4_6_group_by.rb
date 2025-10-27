# frozen_string_literal: true

require '4_1_shop'

class Shop
  # Build a map that stores the customers living in a given city
  # @return [Hash{City => Array<Customer>}]
  def group_customers_by_city
    customers.group_by { it.city }
  end
end

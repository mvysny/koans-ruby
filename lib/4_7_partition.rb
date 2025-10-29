# frozen_string_literal: true

require '4_1_shop'

class Customer
  # @return [Boolean] true if this customer has more undelivered orders than delivered ones
  def more_undelivered_orders?
    order_map = orders.group_by(&:delivered)
    order_map[false].size > order_map[true].size
  end
end

class Shop
  # Return customers who have more undelivered orders than delivered
  # @return [Set<Customer>]
  def customers_with_more_undelivered_orders
    customers.filter(&:more_undelivered_orders?).to_set
  end
end

require '4-1-shop.rb'

class Shop
  # Returns a list of customers, sorted in the descending by number of orders they have made
  # @return [Array<Customer>]
  def get_customers_sorted_by_order
    customers.sort_by { -it.orders.size }
  end
end


require '4-1-shop.rb'

class Shop
  # Returns the set of customers
  # @return [Set<Customer>]
  def get_set_of_customers
    customers.to_set
  end
end


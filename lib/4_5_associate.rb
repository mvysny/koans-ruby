require '4_1_shop'

class Shop
  # Build a map from the customer name to the customer
  # @return [Hash{String => Customer}] maps {Customer#name} to the {Customer}
  def name_to_customer_map
    customers.map { [it.name, it] } .to_h
  end
end

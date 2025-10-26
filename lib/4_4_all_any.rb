require '4_1_shop'

class Shop
  # Checks whether all customers are from given `city`
  # @param city [City]
  # @return [Boolean]
  def all_customers_from?(city)
    customers.all? { it.city == city }
  end

  # Return true if there is at least one customer from a given `city`
  # @param city [City]
  def has_customer_from?(city)
    customers.any? { it.city == city }
  end
end

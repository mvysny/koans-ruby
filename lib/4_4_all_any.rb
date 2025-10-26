require '4_1_shop'

class Shop
  # Checks whether all customers are from given city
  # @param city [City]
  def all_customers_from?(city)
    customers.all? { it.city == city }
  end
end

# frozen_string_literal: true

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

  # Return the number of customers from a given city
  # @param city [City]
  # @return [Integer] number of customers
  def count_customers_from(city)
    customers.count { it.city == city }
  end

  # Return a customer who lives in a given city, or null if there is none
  # @param city [City]
  # @return [Customer, nil]
  def find_customer_from(city)
    customers.find { it.city == city }
  end
end

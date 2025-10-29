# frozen_string_literal: true

require '4_1_shop'

class Shop
  # Find all the different cities the customers are from
  # @return [Array<City>]
  def customer_cities
    customers.map(&:city).uniq
  end

  # Find the customers living in a given city
  # @param city [City]
  # @return [Array<Customer>]
  def get_customers_from(city)
    raise ArgumentError unless city.is_a? City

    customers.filter { it.city == city }
  end
end

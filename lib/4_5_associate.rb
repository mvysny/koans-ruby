# frozen_string_literal: true

require '4_1_shop'

class Shop
  # Build a map from the customer name to the customer
  # @return [Hash{String => Customer}] maps {Customer#name} to the {Customer}
  def name_to_customer_map
    customers.map { [it.name, it] }.to_h
  end

  # Build a map from the customer to their city
  # @return [Hash{Customer => City}]
  def customer_to_city_map
    customers.map { [it, it.city] }.to_h
  end

  # @return [Customer | nil]
  def customer_by_name(name)
    customers.find { it.name == name }
  end

  # Build a map from the customer name to their city
  # @return [Hash{String => City}]
  def customer_name_to_city_map
    customer_to_city_map.transform_keys(&:name)
  end
end

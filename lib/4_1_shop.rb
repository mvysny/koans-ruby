# Shop with a {String} `name` and an array of {Customer}s `customers`.
class Shop < Data.define(:name, :customers)
end

# Customer with a {String} `name`, {City} `city` and an array of {Order}s `orders`.
class Customer < Data.define(:name, :city, :orders)
  # @return [String] `"name from city.name"`
  def to_s
    "#{name} from #{city.name}"
  end
end

# Order with an array of {Product}s `products` and a {Boolean} `delivered` state.
class Order < Data.define(:products, :delivered)
  def delivered?
    delivered
  end
end

# Product with a {String} `name` and a {Float} `price`.
class Product < Data.define(:name, :price)
  # @return [String] `"'name' for price"`
  def to_s
    "'#{name}' for #{price}"
  end
end

# City with a {String} `name`.
class City < Data.define(:name)
  # @return [String] `name`
  def to_s
    name
  end
end

TURKU = City.new('Turku')
HELSINKI = City.new('Helsinki')

SMARKET = Shop.new('S-Market', [
                     Customer.new('Matti', TURKU, [
                                    Order.new([Product.new('apple', 0.2), Product.new('ice-cream', 1.5)], true),
                                    Order.new([Product.new('bicycle', 199)], false)
                                  ]),
                     Customer.new('Jouni', HELSINKI, [
                                    Order.new([Product.new('apple', 0.2), Product.new('ice-cream', 1.5)], false),
                                    Order.new([Product.new('bicycle', 299)], true),
                                    Order.new([Product.new('cookie', 1)], true)
                                  ])
                   ])

KMARKET = Shop.new('K-Market', [
                     Customer.new('Matti', TURKU, [
                                    Order.new([Product.new('laptop', 499)], false),
                                    Order.new([Product.new('baguette', 0.4), Product.new('milk', 1.5)], true),
                                    Order.new([Product.new('bicycle', 299)], true)
                                  ]),
                     Customer.new('Jouni', HELSINKI, [
                                    Order.new([Product.new('laptop', 499)], true),
                                    Order.new([Product.new('baguette', 0.4), Product.new('milk', 1.5)], false),
                                    Order.new([Product.new('bicycle', 299)], false)
                                  ])
                   ])
SHOPS = [SMARKET, KMARKET].freeze

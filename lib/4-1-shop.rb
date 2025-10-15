# Shop with a {String} `name` and an array of {Customer}s.
class Shop < Data.define(:name, :customers)
end

# Customer with a {String} `name`, {City} `city` and an array of {Order}s.
class Customer < Data.define(:name, :city, :orders)
  def to_s
    "#{name} from #{city.name}"
  end
end

# Order with an array of {Product}s and a {Boolean} delivered state.
class Order < Data.define(:products, :delivered)
  def delivered?
    delivered
  end
end

# Product with a {String} `name` and a {Float} `price`.
class Product < Data.define(:name, :price)
  def to_s
    "'#{name}' for #{price}"
  end
end

# City with a {String} `name`.
class City < Data.define(:name)
  def to_s
    name
  end
end

SHOPS = []
begin
  turku = City.new('Turku')
  helsinki = City.new('Helsinki')
  smarket = Shop.new('S-Market', [
    Customer.new('Matti', turku, [
      Order.new([Product.new('apple', 0.2), Product.new('ice-cream', 1.5)], true),
      Order.new([Product.new('bicycle', 199)], false)
    ]),
    Customer.new('Jouni', helsinki, [
      Order.new([Product.new('apple', 0.2), Product.new('ice-cream', 1.5)], false),
      Order.new([Product.new('bicycle', 299)], true)
    ]),
  ])
  SHOPS << smarket
  
  kmarket = Shop.new('K-Market', [
    Customer.new('Matti', turku, [
      Order.new([Product.new('laptop', 499)], false),
      Order.new([Product.new('baguette', 0.4), Product.new('milk', 1.5)], true),
      Order.new([Product.new('bicycle', 299)], true)
    ]),
    Customer.new('Jouni', helsinki, [
      Order.new([Product.new('laptop', 499)], true),
      Order.new([Product.new('baguette', 0.4), Product.new('milk', 1.5)], false),
      Order.new([Product.new('bicycle', 299)], false)
    ]),
  ])
  SHOPS << kmarket
end


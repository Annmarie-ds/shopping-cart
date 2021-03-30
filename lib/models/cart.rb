require 'json'

class Cart
  attr_reader :shopping_cart, :total

  def initialize
    @shopping_cart = []
    @total = 0
  end

  def add_to_cart(product)
    @shopping_cart << product
    @total += product["price"]
  end
end

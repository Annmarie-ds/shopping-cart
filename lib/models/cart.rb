require 'json'

class Cart
  attr_reader :shopping_cart, :total

  def initialize
    @shopping_cart = []
    @total = 0
  end

  def add(product)
    @shopping_cart << product
    @total += product["price"].to_f
  end
end

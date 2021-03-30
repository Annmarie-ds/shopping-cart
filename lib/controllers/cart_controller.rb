require_relative '../models/cart'
require_relative '../views/cart_view'

class CartController
  attr_reader :cart, :inventory, :cart_view

  def initialize(cart:, inventory:)
    @cart = cart
    @inventory = inventory
    @cart_view = CartView.new
  end

  def add(index)
    @product = @inventory.all_products[index - 1]
    @cart.add(@product)
    @cart_view.add_to_cart_display(@product)

  end

  def display_cart
    @cart_view.display(@cart)
  end
end

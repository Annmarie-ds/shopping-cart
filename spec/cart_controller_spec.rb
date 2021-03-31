require 'rspec'
require_relative '../lib/controllers/cart_controller'

describe CartController do
  let(:cart) { Cart.new() }
  let(:inventory) { Inventory.new(@file) }
  let(:cart_controller) { CartController.new(cart: cart, inventory: inventory)}

  describe ".add_to_cart" do
    it "should add a product to the cart" do
      cart_controller.add_to_cart(1)
      expect(cart_controller.cart.shopping_cart.count).to eq 1
    end
  end

  describe ".display_cart" do
    it "should have access to all products in the cart" do
      cart_controller.add_to_cart(1)
      cart_controller.display_cart
      expect(cart.total).to eq 15.39
    end
  end
end

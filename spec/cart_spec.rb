require 'rspec'
require_relative '../lib/models/cart'

describe Cart do
    before do
    @cart = Cart.new()
  end

  describe "#initialize" do
    it "should create an empty array" do
      expect(@cart.shopping_cart).to be_a(Array)
      expect(@cart.shopping_cart.count).to eq 0
    end

    it "should have an empty value for total" do
      expect(@cart.total).to eq 0
    end
  end

  describe ".add" do
    let(:inventory) { Inventory.new(@file) }
    let(:product) { inventory.all_products.first }
    it "should append product to shopping_cart array" do
      size_before = @cart.shopping_cart.count
      @cart.add(product)
      expect(@cart).to respond_to :add
      expect(@cart.shopping_cart.count).to eq (size_before + 1)
    end

    it "should update the total value" do
      @cart.add(product)
      expect(@cart.total).to eq (15.39)
    end
  end
end

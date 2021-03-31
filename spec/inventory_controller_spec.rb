require 'rspec'
require_relative '../lib/controllers/inventory_controller'

describe InventoryController do
  before do
    @inventory = Inventory.new(@file)
    @inventory_controller = InventoryController.new(inventory: @inventory)
  end

  describe "#initialize" do
    it "should store an instance of Inventory" do
      expect(@inventory_controller
        .instance_variable_get(:@inventory))
        .to be_a Inventory
    end
  end

  describe ".show_product" do
    it "should implement a method to show a single product" do
      expect(@inventory_controller).to respond_to :show_product
    end
  end

  describe ".display_products" do
    it "should implement a method to show all products" do
      expect(@inventory_controller).to respond_to :display_products
    end
  end
end

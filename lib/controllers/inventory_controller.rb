require_relative '../models/inventory'
require_relative '../views/inventory_view'

class InventoryController
  attr_reader :inventory, :view, :products, :product

  def initialize(inventory:)
    @inventory = inventory
    @inventory_view = InventoryView.new
  end

  def show_product(index)
    @product = @inventory.all_products[index - 1]
    @inventory_view.display_single(@product)
  end

  def display_products
    @inventory_view.display_all(@inventory.all)
    @inventory_view.ask_user_for_index
  end

end

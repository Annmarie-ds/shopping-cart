require 'json'

class Inventory
  attr_reader :all_products

  def initialize(file)
    @file = file
    @all_products = []
    load_json
  end

  def all
    return @all_products
  end

  private

  def load_json
    all_products = JSON.parse(@file)
    all_products.each do |p|
      @uuid = p["uuid"]
      @name = p["name"]
      @pice = p["price"]
      @all_products << p
    end
  end
end

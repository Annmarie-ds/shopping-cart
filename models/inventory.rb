require 'json'

class Inventory
  attr_reader :all_products

  def initialize(file)
    @file = file
    @filepath = './products.json'
    @all_products = []
    load_json
  end

  def load_json
    file = File.read(@filepath)
    all_products = JSON.parse(file)
    all_products.each { |p|
      @uuid = p["uuid"]
      @name = p["name"]
      @pice = p["price"]
      @all_products << p
    }
  end
end

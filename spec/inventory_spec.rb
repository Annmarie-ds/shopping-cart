require 'rspec'
require_relative '../lib/models/inventory'

describe "Inventory" do
  let(:inventory) { Inventory.new(file: @file) }

  describe "#initialize" do
    it "should create an array `@all_products`" do
      expect(inventory.instance_variable_get("@all_products"))
    end
  end

  describe '.all' do
    it "should give access to all products" do
      expect(inventory).to respond_to :all
    end
  end
end

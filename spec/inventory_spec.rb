require 'rspec'
require_relative '../lib/models/inventory'

describe Inventory do
  describe "#initialize" do
    it 'should load all products from the json file' do
      inventory = Inventory.new(file: @file)
      expect(inventory.all_products.first["uuid"]).to eq 1411
      expect(inventory.all_products.first["name"]).to eq "Jockey Wheels - Orange"
      expect(inventory.all_products.first["price"]).to eq "15.39"
      expect(inventory.all_products.last["uuid"]).to eq 9101
      expect(inventory.all_products.last["name"]).to eq "Front Derailleur - 34.9mm"
      expect(inventory.all_products.last["price"]).to eq "31.22"
    end
  end
end

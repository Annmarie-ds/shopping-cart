require 'rspec'
require_relative '../lib/views/inventory_view'

describe InventoryView do
  let(:inventory_view) { InventoryView.new() }

  describe ".display_all" do
    it 'should show all products' do
      expect(inventory_view).to respond_to :display_all
    end
  end

  describe ".display_single" do
    it 'should show one single product' do
      expect(inventory_view).to respond_to :display_single
    end
  end
end

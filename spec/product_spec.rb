require 'rspec'
require_relative '../lib/models/product'

describe Product do
  before do
    @product = Product.new(uuid: 1411, name: "Jockey Wheels - Orange", price: 15.39)
  end

  describe "#initialize" do
    it 'should create a new instance of Product with the right details' do
      expect(@product.uuid).to eq 1411
      expect(@product.name).to eq "Jockey Wheels - Orange"
      expect(@product.price).to eq 15.39
    end
  end

end

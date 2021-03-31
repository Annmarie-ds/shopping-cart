class Product
  attr_reader :uuid, :name, :price

  def initialize(uuid:, name:, price:)
    @uuid = uuid
    @name = name
    @price = price
  end

end

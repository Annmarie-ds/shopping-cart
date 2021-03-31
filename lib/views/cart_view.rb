class CartView
  def display(cart)
    index = 0
    puts "Products in Shopping Cart:"
    cart.shopping_cart.each do |product|
      puts "#{index + 1}. #{product["name"]} - $#{product["price"]}"
    end
    puts "TOTAL: $#{cart.total.round(2)}"
    if cart.total > 20.00 && cart.total < 50.00
      cart.total = card.total * 0.9
      discount = 10
      order_min = 20
    elsif cart.total > 50.00 && cart.total < 100.00
      cart.total = card.total * 0.85
      discount = 15
      order_min = 50
    elsif cart.total > 100
      discount = 20
      order_min = 100
    end
    puts "Discount applied: #{discount}% off on total greater than #{order_min}"
    puts "Total after discount: $#{cart.total.round(2)}"
  end

  def add_to_cart_display(product)
    puts "Added #{product["name"]} to your cart!"
  end
end

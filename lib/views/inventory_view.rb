class InventoryView
  def display_all(all_products)
    all_products.each_with_index do |product, index|
      puts "Here's what we have in stock:"
      puts "-----------------------------------------"
      puts "#{index + 1}. #{product.name} - #{product.price}"
    end
  end

  def display_single(product)
    puts "-----------------------------------------"
    puts "#{product["name"]}: $#{product["price"]}"
    puts "-----------------------------------------"
  end

  def ask_user_for_index
    puts "Enter the number on the left of the product (1 - 4)"
    puts ">"
    return gets.chomp.to_i - 1
  end
end

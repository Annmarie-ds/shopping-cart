class InventoryView
  def display_all(all_products)
    all_products.each_with_index do |product, index|
      puts "IN-STOCK:"
      puts "#{index + 1}. #{product["name"]}"
      puts "----------------------------------------------"
    end
  end

  def display_single(product)
    puts "----------------------------------------------"
    puts "#{product["uuid"]} - #{product["name"]}: $#{product["price"]}"
    puts "----------------------------------------------"
  end

  def ask_user_for_index
    puts "Select item by entering number on the left of item"
    puts "(1-4)"
    puts ">"
    return gets.chomp.to_i
  end
end

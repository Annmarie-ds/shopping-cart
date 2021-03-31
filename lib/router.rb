class Router
  def initialize(cart_controller:, inventory_controller:)
    @cart_controller = cart_controller
    @inventory_controller = inventory_controller
    @running = true
  end

  def run
    puts "Welcome to the Shop!"
    puts "----------------------------------------------"

    while @running
      display_tasks
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  def route_action(action)
    case action
    # browse
    when 1 then index = @inventory_controller.display_products
                display_inventory_menu
                inventory(action, index)
    # view cart
    when 2 then @cart_controller.display_cart
                display_tasks
    # checkout
    when 3 then stop
    end
  end

  def inventory(action, index)
    case action
    # show selected product details
    when 1 then @inventory_controller.show_product(index)
    # add to cart
    when 2 then @cart_controller.add(index)
    # back to main menu
    when 3 then display_tasks
    # exit
    when 4 then stop
    end
  end

  def stop
    puts "Thanks for stopping by, see you again soon!"
    @running = false
  end

  def display_tasks
    puts "Please enter 1, 2 or 3 from the options below:"
    puts "----------------------------------------------"
    puts "1. Browse shop"
    puts "2. View cart"
    puts "3. Checkout"
    puts "----------------------------------------------"
  end

  def display_inventory_menu
    puts "Please enter 1, 2, 3 or 4 from the options below:"
    puts "----------------------------------------------"
    puts "1. View item details"
    puts "2. Add to cart"
    puts "3. Back to main menu"
    puts "4. Exit"
    puts "----------------------------------------------"
  end
end

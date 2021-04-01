require_relative 'models/inventory'
require_relative 'controllers/inventory_controller'
require_relative 'views/inventory_view'

require_relative 'models/cart'
require_relative 'controllers/cart_controller'
require_relative 'views/cart_view'

require_relative 'router'

json_file = File.read('products.json')
@inventory = Inventory.new(json_file)
inventory_controller = InventoryController.new(inventory: @inventory)

@cart = Cart.new
cart_controller = CartController.new(cart: @cart, inventory: @inventory)

router = Router.new(cart_controller: cart_controller, inventory_controller: inventory_controller)

router.run


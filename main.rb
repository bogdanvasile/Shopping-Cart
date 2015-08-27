
require './shopping_cart'


# Creating a new cart instance and adding some items to it. 
# Finally calling print on the cart to show the user how much he will need to pay.

cart = Cart.new('Bogdan')

cart.add_item(Vacuum.new 2)
cart.add_item(Banana.new 10)
cart.add_item(Rice.new 2)
cart.add_item(OrangeJuice.new 1)
cart.add_item(Anchovies.new 30)

cart.print

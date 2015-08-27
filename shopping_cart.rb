
require './items'


# The Cart class is a placeholder with the purpose to add and store the items.
# The overall_discount method calculates a discount when there are more than five items in the cart. 
# The print method first puts the content of the cart (item names, units bought and their cost),
# secondly it puts the total amount to pay for the cart's content.

class Cart

	def initialize(username)
		@username = username
		@items = []
	end

	def add_item(item)
		@items << item
	end

	def overall_discount
		price = 0
		units = 0
		for item in @items
			price += item.total_price
			units += item.units
		end

		if units > 5
			price = price*0.9
		end

		return price
	end

	def print
		puts @username + ", let's look at your cart:"

		for item in @items
			puts "You got #{item.units} units of #{item.name} for #{item.total_price} CHF"
		end
		puts "\nTotal amount: #{overall_discount()} CHF"
	end
	
end

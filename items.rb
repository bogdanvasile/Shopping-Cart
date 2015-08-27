
require 'date'


# I am building a shopping cart for a new awesome website. 
# Except for the website and the cart everything else is in place and ready to work.
# This program calculates the total cost of the purchases but also applies certain 
# discounts to various items categories added in the cart and an overall discount.


# Author::    Bogdan Vasile  (mailto:bogdan.vasile.pm@gmail.com)


# The Item class holds the attributes used accross all item categories.
# The total_price method calculates the total price for the item after a discount is applied.

class Item
	attr_accessor :name, :unit_price, :units
	

	def initialize(name, price, units)
		@name = name
		@price = price
		@units = units
		@discount = 0
	end


	def total_price
		return @units * (@price - @discount)
	end

end


# This class inherits from item and is a blueprint class for houseware items. 
# The calculate_discount method calculates 5% discount for items priced at over 100.

class Houseware < Item

	def initialize(name, price, units)
		super(name, price, units)
		@discount = calculate_discount()
	end

	def calculate_discount
		if @price > 100
			return @price*0.05
		else
			return 0
		end
	end

end


# This class inherits from houseware and holds attributes and values for item category vacuums.
class Vacuum < Houseware

	def initialize(units)
		super('Vacuum', 150, units)
	end

end

# This class inherits from item and is a blueprint class for houseware items. 
# The calculate_discount method calculates 10% discount for items bought on Saturdays or Sundays.

class Fruit < Item

	def initialize(name, price, units)
		super(name, price, units)
		@discount = calculate_discount()
	end

	def calculate_discount
		if Date.today.wday == 6 || Date.today.wday == 0
			return @price*0.1
		else
			return 0
		end
	end

end


# This class inherits from fruit and holds attributes and values for item category banana.

class Banana < Fruit
	def initialize(units)
		super('Banana', 10, units)
	end
end


# This class inherits from fruit and holds attributes and values for item category orangejuice.

class OrangeJuice < Fruit
	def initialize(units)
		super('Orange juice', 10, units)
	end
end


# This class inherits from item and holds attributes and values for item category rice.

class Rice < Item
	def initialize(units)
		super('Rice', 1, units)
	end
end


# This class inherits from item and holds attributes and values for item category anchovies.

class Anchovies < Item
	def initialize(units)
		super('Anchovies', 2, units)
	end
end

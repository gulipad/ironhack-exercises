require "pry"

class MilkShake
	attr_reader :base_price, :ingredients

  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
  end

end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class Shop
	def initialize
		@shakes = []
	end

	def add_milkshake(shake)
		@shakes.push(shake)
	end

	def checkout
	price_of_order = 0
		@shakes.each do |shake|
			price_of_order += shake.price_of_milkshake	
		end
	price_of_order
	puts "That'll be #{price_of_order} euros, please"
	end

end


myshake = MilkShake.new 
hershake = MilkShake.new

chocolate = Ingredient.new "chocolate",2
vanilla = Ingredient.new "vanilla",2
oreo = Ingredient.new "oreo",3
nutella = Ingredient.new "nutella",2

myshake.add_ingredient(chocolate)
myshake.add_ingredient(vanilla)
hershake.add_ingredient(oreo)
hershake.add_ingredient(nutella)

madrid = Shop.new
madrid.add_milkshake(myshake)
madrid.add_milkshake(hershake)

puts madrid.checkout
#binding.pry
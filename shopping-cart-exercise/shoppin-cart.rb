require "pry"

class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
      @items.push(item)
  end

  def checkout
  	total = 0
  	@items.each do |item|
  		total += item.price 
  	end
  	if @items.length >5
  		puts "Your total is #{total*0.95} euros, thanks!"
  	else
  	puts "Your total is #{total} euros, thanks!"
  end
  end

end

class Item 
	attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
  	@price
  end

end

class Houseware < Item
  def price
  	if @price > 100
  	  	@price = @price*0.95
  	end
  end
end

class Fruit < Item
  def price
  if $today == "Sat" || $today == "Sun"
  		@price = @price*0.9
  	end
  end
end

$today = "Sat" #is to set variable as global.

vacuum = Houseware.new("vacuum",150)     
banana = Fruit.new("banana",10)     
anchovies = Item.new("anchovies",2) 
rice = Item.new("rice",1)     
oj = Item.new("orange juice",10)

gulis_cart = ShoppingCart.new   

binding.pry






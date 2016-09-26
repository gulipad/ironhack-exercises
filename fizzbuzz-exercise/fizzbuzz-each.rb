require 'pry'

init = [*0..100];

list = []

init.each do |element|

	list[element] = ''

	if element % 3 != 0 && element %5 != 0
		list[element] = element
	end

	if element % 3 == 0
		list[element]<<"Fizz"
	end

	if element % 5 == 0
		list[element]<<"Buzz"
	end
end

puts list

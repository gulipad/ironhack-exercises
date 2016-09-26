require 'pry'

init = [*0..100];

list = []

for element in init	
	list[element] = ''

	if element % 3 != 0 && element %5 != 0 && element.to_s[0] != "1"
		list[element] = element
	end

	if element % 3 == 0
		list[element]<<"Fizz"
	end

	if element % 5 == 0
		list[element]<<"Buzz"
	end

	if element.to_s[0] == "1"
		list[element] << "Bang"
	end
end

list.delete_at 0
puts list

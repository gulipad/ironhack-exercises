require "pry"

def solve_cipher(input, shift_input)
	coded = []
	shift = -shift_input
	for index in [*0..input.length-1]
		code = input[index].ord
		if code == ' '.ord
			decode =  ' '.ord

		elsif code - shift < 'a'.ord
			decode = 123 - (shift - (code-'a'.ord))
		else
			decode = code - shift
		end
		
		coded.push(decode.chr)
	end
	puts coded.join
end

puts solve_cipher("p| uhdo qdph lv grqdog gxfn",-3)
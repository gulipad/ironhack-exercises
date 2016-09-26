require "pry"

def sorting(sentence)

	prewords = sentence.split
	for word in prewords
		word = word.gsub!(/\W+/,'')

	end
	words = prewords.sort_by!(&:downcase)	
	puts words

end

puts 'Gimme a sentence, man' 
sentence = gets.chomp
sorted = sorting(sentence)


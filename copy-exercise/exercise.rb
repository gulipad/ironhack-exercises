puts "What is the source file?"
source_file = gets.chomp
contents = IO.read(source_file)
puts "What is the destination file?"
destination_file = gets.chomp
IO.write(destination_file, contents)
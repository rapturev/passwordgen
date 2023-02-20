puts "Hi!"
puts "Your password will include letters of english alphabet and digits"
puts "Enter a name to your password: "

name = gets.to_s.chomp

puts "Your password will be stored in the file named #{name}.txt."
puts "Enter a number of symbols to your password: "

symbols = gets.to_i
symbols += 1
all = Array.new(symbols)

letter_array = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u","v","w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 ]

for iterator in 1..symbols
	all.push(letter_array[rand(63)])
end

result = all.join
puts "Your password is #{result}"

file = File.new("#{name}.txt", "w")
file.puts name
file.puts result
file.close








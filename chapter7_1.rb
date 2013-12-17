bottles = 99
while bottles != 1
		puts bottles.to_s + " bottles of beer on the wall," + bottles.to_s + " bottles of beer."

		puts "Take one down and pass it around," + (bottles - 1).to_s + " bottles of beer on the wall."
					
		bottles = bottles - 1
end
puts bottles.to_s + " bottle of beer on the wall," + bottles.to_s + " bottle of beer."

puts "Take one down and pass it around,no more bottles of beer on the wall."

puts "no more bottles of beer on the wall, no more bottles of beer. "

puts "Go to the store and buy some more, 99 bottles of beer on the wall."

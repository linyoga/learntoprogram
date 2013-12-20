def english_number number
	if number < 0
		return "please enter a number > 0"
	end
	
	if number == 0
	return "zero"
	end	

	num_string = ""

	ones_place = ["one","two","three","four","five","six","seven","eight","nine"]

	tens_place = ["ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

	teenagers  = ["eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]


	left = number
	write = left /1000000
	left  = left - write * 1000000

	if write > 0

	millions = english_number write
	num_string = num_string + millions + " million"

		if left > 0
			num_string = num_string + " "
	end
		end
	
	write = left / 1000
	left  = left - write * 1000

	if write > 0

	thousands = english_number write 
	num_string = num_string + thousands + ' thousand'

		if left > 0
		num_string = num_string + " "
		end
	end

	write = left / 100
	left  = left - write * 100

	if write > 0

		hundreds = english_number write
		num_string = num_string + hundreds + " hundred"

		if left > 0
		num_string = num_string + " "

		end
	end

	write = left / 10
	left  = left - write * 10

	if write > 0
		if write == 1 && left > 0
		num_string = num_string + teenagers[left - 1]
		left = 0
		else
		num_string = num_string + tens_place[write - 1]
		end

		if left > 0
		num_string = num_string + "-"
		end
	end


	write = left 
	left  = 0

	if write > 0
		num_string = num_string + ones_place[write -1]
	end

	return num_string
end

def song bottles
	allbottles = bottles
	while bottles > 2
		puts english_number(bottles) + " bottles of beer on the wall," + english_number(bottles) + " bottles of beer."

		puts "Take one down and pass it around," + english_number(bottles - 1) + " bottles of beer on the wall."
		bottles = bottles - 1
	end
puts "One bottle of beer on the wall,One bottle of beer."

puts "Take one down and pass it around,no more bottles of beer on the wall."

puts "no more bottles of beer on the wall, no more bottles of beer. "

puts "Go to the store and buy some more," + english_number(allbottles) + " bottles of beer on the wall."
end
song(25)
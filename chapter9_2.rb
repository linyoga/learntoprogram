def old_roman_numberal numbers


	roman = []	
	roman.push	(numbers / 1000)
	roman.push  (numbers % 1000 / 500)
	roman.push  (numbers % 	500 / 100)
	roman.push 	(numbers %	100 /	 50)
	roman.push 	(numbers %	 50 /	 10)
	roman.push	(numbers % 	 10 /   5)
	roman.push	(numbers %		5 /   1)

	
print "M" * roman[0].to_i
print "D" * roman[1].to_i
print "C" * roman[2].to_i
print "L" * roman[3].to_i
print "X" * roman[4].to_i
print "V" * roman[5].to_i
puts "I" * roman[6].to_i

end

old_roman_numberal 49

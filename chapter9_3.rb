def roman_numeral numbers

	roman = ""

	roman = roman + "M" * (numbers / 1000)
	if (numbers % 1000 / 100) == 9 
		roman = roman + "CM"
	
	elsif(numbers % 1000 / 100) == 4
		roman = roman + "CD"
	
	else
		roman = roman + "D" * (numbers % 	1000 / 500)
		roman = roman + "C" * (numbers % 	500 / 100)
	end
	
	if(numbers % 100 / 10) == 9
		roman = roman + "XC"
		
	elsif(numbers % 100 / 10) == 4
		roman = roman + "XL"
	else
		roman = roman + "L" * (numbers % 100 / 50)
		roman = roman + "X" * (numbers % 50 / 10)
	end
	
	if (numbers % 10 / 1) == 9
		roman = roman + "IX"

	elsif (numbers % 10 / 1) == 4
		roman = roman + "IV"
	else
		roman = roman + "V" * (numbers % 10 / 5)
		roman = roman + "I" * (numbers % 5 / 1)
	end


end
puts(roman_numeral 1994)

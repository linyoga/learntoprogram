puts "HEY!HERE YOU COME"
count = 0
while count  < 	3

	puts "talking to your deaf grandma:"

	yousay = gets.chomp

	if yousay == "BYE"

		count = count + 1
	else
		count = 0
	end

	if yousay != yousay.upcase
		
		puts "HUH?! SPEAK UP, SONNY!"
	
	elsif
		
		puts "NO,NOT SINCE " + (1930 + rand(21)).to_s + "!"
	
	end
end
puts "BYE-BYE"
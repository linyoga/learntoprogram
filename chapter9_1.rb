def ask questions
	while true
		puts questions
		reply = gets.chomp.downcase

		if (reply == "yes" ||	reply =="no")
			if reply =="yes"
				return true
			else
				return false
			end
			break
		else
			puts 'please answer "yes" or "no".'
			end
		end
end

puts "Hello,and Thank you for..."
puts

ask "Do you like eating  tacos?"
wets_bed = ask "Do you wet the bed?"
puts wets_bed
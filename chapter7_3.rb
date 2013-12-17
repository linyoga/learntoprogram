puts "Starting year?"

s_year = gets.chomp.to_i

puts "Ending year?"

e_year = gets.chomp.to_i  

while true
	if e_year < s_year 

		puts "plz type Ending year again and larger than " + s_year.to_s

		e_year = gets.chomp.to_i
else
	break
end
end

now_year = s_year

while now_year <= e_year

	if now_year % 4 == 0
		if now_year % 100 != 0 || now_year % 400 ==0
			puts now_year

 	end
	end

	now_year += 1 
end 


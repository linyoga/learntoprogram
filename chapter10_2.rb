def shuffle array

	new_array = []

	while array.length > 0

		random_index = rand(array.length)

		array[random_index - 1],array[array.length - 1] = array[array.length - 1],array[random_index - 1]

		new_array.push array.pop
	end
	puts new_array.reverse
end

puts(shuffle([1,5,3,7,8,10,2])) 







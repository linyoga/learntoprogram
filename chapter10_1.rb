def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array

	if unsorted_array.length <= 0 
		return sorted_array
	end

	smallest = unsorted_array.pop
	stillunsorted_array = []

	unsorted_array.each do |compare_object|
		if smallest > compare_object
				stillunsorted_array.push smallest
				smallest = compare_object
		else
				stillunsorted_array.push compare_object
		end
	end

sorted_array.push smallest
recursive_sort stillunsorted_array, sorted_array 				
end
puts(sort(['apple','orange','bear','cookie']))
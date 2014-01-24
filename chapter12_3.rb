def roman_to_integer roman

  roman_number = { 'i' =>    1,
                   'v' =>    5,
                   'x' =>   10,
                   'l' =>   50,
                   'c' =>  100,
                   'd' =>  500,
                   'm' => 1000}

  total = 0
  previous = 0
  index = roman.length - 1

  while index >= 0
    char = roman[index].chr.downcase
    index = index - 1
    value = roman_number[char]
  
  if !value
    puts 'this is not a valid roman numeral'
    return
  end

  if value < previous
    value = value * - 1
  else
    previous = value
  end
  total = total + value
end

  total
end


puts(roman_to_integer('mcmxcix'))
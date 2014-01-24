birth_dates = {}

File.read('birthdates.txt').each_line do |line|
  name, date, year = line.split(',')
  birth_dates[name] = Time.gm(year, *(date.split))
end

puts 'whose birthday would you like to know?'
name = gets.chomp
b_day = birth_dates[name]

if b_day ==nil
  puts "I don't know this one."
else
  puts b_day
end

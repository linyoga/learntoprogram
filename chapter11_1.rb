Dir.chdir 'C:/Documents and Settings/linyoga/PictureInbox'
pic_names = Dir['F:/**/*.{JPG,jpg}']

puts 'what would you like to download ?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length}files: "

pic_number = 1
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "batch_name#{pic_number}.jpg"
  end

  if File.exists(new_name)
    puts "Sorry,target file #{new_name} already exists"
    puts "#{pic_number - 1} pictures copied"
    exit
  else
    File.rename name, new_name
    pic_number = pic_number + 1
  end
end



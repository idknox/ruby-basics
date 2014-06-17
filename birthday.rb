def find_names(name, everyones_info)

  if everyones_info.include?(name)
    bday = everyones_info[(everyones_info.index(name))+1]
    year = bday[0..3]
    age = Time.new.year - year.to_i
  elsif name == "Exit"
    exit()
  else
    puts "That name is not on the list"
  end

  puts "Name: #{name}"
  puts "Birthdate: #{bday}"
  puts "Age: #{age}"

end

puts "Pick a name, or use enter 'exit' to close the program"

name = gets.chomp.capitalize

filename = 'birthday_data.csv'

txt = File.read filename

everyones_info = txt.split(',')

find_names(name, everyones_info)


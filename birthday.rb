def find_names

  puts "Type 'exit' and ENTER to close the program, or enter your name: "

  name = gets.chomp.capitalize

  filename = 'birthday_data.csv'

  txt = File.read filename

  birthday_info = txt.split(',')

  i = 0

  if birthday_info.include?(name)
    b = birthday_info[(birthday_info.index(name))+1]
    year = b[0..3]
    age = Time.new.year - year.to_i
    puts name + " " + b + " " + age.to_s
  elsif name == "Exit"
    exit()
  else
    puts "That name is not on the list"
  end

  i += 1
  find_names
end

find_names

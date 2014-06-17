def yell(response)

  if response == "exit"
    exit()
  elsif response != response.upcase
    puts "HUH?! SPEAK UP SONNY!\n"
  else
    puts "\nNO, NOT SINCE #{rand(1930..1950)}!\n"
  end

  talk_to_grandma

end

def talk_to_grandma
  puts "\nPlease write something, or 'exit' to close the program: "
  response = gets.chomp
  yell(response)
end

talk_to_grandma

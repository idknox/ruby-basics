
def get_response
  puts "Please write something, or 'exit' to exit the program"
  response = gets.chomp
  if response == "exit"
    exit()
  elsif response != response.upcase
    puts "HUH?! SPEAK UP SONNY!"
  else
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  end
  get_response
end

get_response



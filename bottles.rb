puts "I need to know how many bottles to sing!"
puts "How many?"

def sing_song(count)
  if count > 1
    puts "\n#{count} bottles of beer on the wall!"
    puts "#{count} bottles of beer!"
    puts "You take one down, you pass it around!\n"
    count -= 1
    sing_song(count)
  elsif count == 1
    puts "\n#{count} bottle of beer on the wall!"
    puts "#{count} bottle of beer!"
    puts "You take one down, you pass it around!"
    puts "\nNo more bottles of beer on the wall!"
  else
    exit()
  end
end

input = gets.chomp
count = input[5..-1].to_i
if (count > 99 || count < 1) || (input != "sing " + count.to_s)
  puts "Incorrect input. Program will now exit."
else
  sing_song(count)
end





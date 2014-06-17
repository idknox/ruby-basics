def sing_song(count)
  if count > 1
    puts "\n#{count} bottles of beer on the wall!"
    puts "#{count} bottles of beer!"
    puts "You take one down, you pass it around!\n"
    count -= 1
    sing_song(count)
  else
    puts "\n#{count} bottle of beer on the wall!"
    puts "#{count} bottle of beer!"
    puts "You take one down, you pass it around!"
    puts "\nNo more bottles of beer on the wall!"
  end

end

puts "I need to know how many bottles to sing!"
puts "How many?"

input = gets.chomp
count = input[5..-1].to_i
if ( count < 1 || count > 99) || (input != "sing " + count.to_s)
  puts "Incorrect input. Program will now exit."
else
  sing_song(count)
end






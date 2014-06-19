def sing(count)
  if count > 1
    puts "\n#{count} bottles of beer on the wall!"
    puts "#{count} bottles of beer!"
    puts "You take one down, you pass it around!\n"
    sing(count-1)
  else
    puts "\n#{count} bottle of beer on the wall!"
    puts "#{count} bottle of beer!"
    puts "You take one down, you pass it around!"
    puts "\nNo more bottles of beer on the wall!"
    puts "-" * 50
  end
  puts count
end

puts "How many verses should we sing?"

input = gets.chomp.to_i

sing(input)

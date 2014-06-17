puts "Enter a number: "

x = gets.chomp.to_i
roman = ""
num_hash={
  1000 => "M", 900 => "CM", 500 => "D", 400 => "D", 100 => "C",
  90 => "XC", 50 => "L", 40 => "XL", 10 => "X",
  9 => "IX", 5 => "V", 4 => "IV", 1 => "I"
  }


while x > 0
  for v in num_hash.keys
    if (x/v) > 0
      x -= v
      roman += num_hash.fetch(v)
      break
    break
    end
  end
end

puts roman
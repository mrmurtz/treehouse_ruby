random_num = Random.new.rand(5)
loop do
  puts "Guess the number between 0 to 5 (e to exit)"
  answer = gets.chomp
  if answer == "e"
      puts "The number I was looking for was #{random_num}"
    break
  else
    if answer.to_i == random_num
      puts "Corrreecccttt!!!"
      break
    else
      puts "Try again..."
    end
    end
end

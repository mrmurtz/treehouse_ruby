def get_name
  name = "" # variable name is set to an empty string
  loop do
    puts "Enter your name (min 3 chars and no numbers):"
    name = gets.chomp
    if name.length >= 2 && !name.index(/\d/)
      break
    else
      puts "Name must be longer than 2 characters and NO CNUMBERS"
    end
  end
return name
end

name = get_name
puts "Hi #{name}"

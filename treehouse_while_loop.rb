def print_hello(num)
  i = 0
  while i < num
    puts "hello"
    i+=1
  end
end

answer = 4

while answer < 5
  print "How many times do you want to print hello?"
  answer = gets.chomp.to_i
  print_hello(answer)
end

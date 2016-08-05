def ask(question, kind="string")
    print question + " "
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
end

def add_contact
  contact = {"name" => "", "phone_number" => []}
  contact["name"] = ask("What is the person's name?")

  answer = ""
  while answer != "n"
    answer = ask("Do you want to add a phone number? (y/n)")
    if answer == "y"
      phone = ask("Enter a phone number:")
      contact["phone_number"].push(phone)
    end
  end
  return contact
end

contact_list = []

answer = ""
while answer != "n"
  contact_list.push(add_contact())
  answer = ask("Would you like to add another? (y/n)")
end

puts "-----"

# print out name of contact list
# if they have numbers print out the numbers
# seperate them with ---'s

contact_list.each do |contact|
  puts "Name: #{contact["name"]}"

  if contact["phone_number"].size > 0
    contact["phone_number"]. each do |number|
    puts "Phone: #{contact[number]}"
end
end

puts "-----"

end

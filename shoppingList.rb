def create_list
  puts "What is the name of the list? "
  name = gets.chomp

  hash = {"name" => name, "items" => Array.new}
end

def add_list_item
  puts "What the fuck are you gonna get? "
  item_name = gets.chomp

  print "How much? "
  quantity = gets.chomp.to_i

  hash = { "name" => item_name, "quantity" => quantity }
end

def print_separator(character="-")
  puts character * 80
end

def print_list(list)
  puts "List: #{list['name']}"
  print_separator()

  list["items"].each do |item|
  puts "\tItem: " + item['name'] + "\t\t\t" + "Quantity: " + item["quantity"].to_s
  end
  print print_separator()
end

list = create_list()

puts "Add some shit to fucking list!"
list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())

puts "Here's your fucking list:\n"
print_list(list)
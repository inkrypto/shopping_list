def create_list
  puts "What kind of the list is this? "
  name = gets.chomp

  hash = {"name" => name, "items" => Array.new}
end

def add_list_item
  puts "What are you gonna get? "
  item_name = gets.chomp

  print "How many do you need? "
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

loop do
  puts "Add items to the list. Type 'done' when finished."

  # Store the new hash in a variable to check later if the user entered
  # 'done', if so, we jump out of the loop, otherwise we add to the hash and 
  # ask again
  new_hash = add_list_item()

  if new_hash["name"] == 'done'
    print_list(list)
    break
  else
    list['items'].push(new_hash) 
  end
end
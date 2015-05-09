## since this code is NOT wrapped in a class, list needs to be made into a instance variable like so => @list

def create_list
  print "What kind of list is this? "
  name = gets.chomp

  hash = { "name" => name, "items" => Array.new }
end

def add_list_item
  print "What do you want to get? "
  item_name = gets.chomp
    if item_name == "done"
      print_list(@list)
      exit #break didn't work? but exit did?
    elsif item_name == 'p'
      print_list(@list)
      add_list_item
    else
      print "How many do you need?"
      quantity = gets.chomp
      hash = { "name" => item_name, "quantity" => quantity }
  end      
end

def print_separator(character="-")
  puts character * 80
end

def print_list(list)
  puts "List: #{list['name']}"
  print_separator()

  list["items"].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" +
         "Quantity: " + item['quantity'].to_s
  end

  print_separator()
end

@list = create_list()

loop do
  puts "Great! Add some items to your list."

  @list['items'].push(add_list_item())
end

puts "Here's your list:\n"
print_list(list)

# p "add list method=" + add_list_item.inspect
# p "creat list method=" + create_list.inspect 
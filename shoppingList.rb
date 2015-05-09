## since this code is NOT wrapped in a class, list needs to be made into a instance variable like so => @list

## break will only exit out the current scope, not the program. exit will end the script.
## loop do #loop 1
  ##  loop do #loop 2
    ## do something here
    ##break
  ## end
## end
## this break will only break you out of loop 2 not the entire script.. make sense?

def create_list
  puts "What kind of the list is this? "
  name = gets.chomp

  hash = {"name" => name, "items" => Array.new}
end

def add_list_item
  puts "What are you gonna get? "
  item_name = gets.chomp
## this if statement has to go here.. not in the loop bc you call on this method in the loop. also we are evaluating 
## the users input, NOT what is in the hash - if user input equals done, print the list and exit this shit!
    if item_name == 'done'
      print_list(@list)
      exit
    end

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

@list = create_list()

loop do
  puts "Add items to the list. Type 'done' when finished."

  # Store the new hash in a variable to check later if the user entered
  # 'done', if so, we jump out of the loop, otherwise we add to the hash and 
  # ask again


  new_hash = add_list_item()

## when i type done... it ask me how many do i want... before it will let me exit??
## so I'm not sure what your trying to do here.. your asking the code to look at new_hash["name"] every time the user does something
## don't you want to evaluate the user input instead? if the user input equals 'done' then break out of the code?
  # if new_hash["name"] == 'done'
  #   print_list(list)
  #   break
  # else
  #   list['items'].push(new_hash) 
  # end
  @list['items'].push(new_hash)
end
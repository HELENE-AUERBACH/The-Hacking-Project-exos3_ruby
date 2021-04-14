def say_hello(first_name)
  puts "Bonjour, #{first_name} !"
end

def ask_first_name
  print "Quel est ton prénom ?\n> "
  first_name = gets.chomp
  return first_name
end

# METHODS ARE ABOVE
first_name = ask_first_name
say_hello(first_name)

# I

def say_something name
	puts "Hi, #{name}"
end

say_something 'Ossi'


# II

def print_details details
	puts details[:name] if details[:name]
	puts details[:age] if details[:age]
	puts details[:address] if details[:adress]
end

hh = { :name => 'Mike', :age => 65, :address => '123 West Street' }

print_details hh
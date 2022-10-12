@hh = {}


def add_person options
	# добавляет пару в хеш
	
	puts 'Уже существует!' if @hh[options[:name]]
	
	# @hh.store(name, age) # мой вариант
	@hh[options[:name]] = options[:age]
end


def show_hash
	# показывает хеш
	# puts @hh.inspect # мой вариант
	@hh.keys.each do |key|
		age = @hh[key]
		puts "Name: #{key}, age: #{age}"
	end
end


loop do
	# добавлять пока не введена пустая строка
	show_hash
	print "\nВведите имя: "
	name = gets.strip.capitalize
	print "Введите возраст: "
	age = gets.to_i
	
	if name == "" || age == ""
		exit
	end
	
	# I вариант
	# options = { :name => name, :age => age }
	# add_person options

	# II вариант
	add_person :age => age, :name => name

end
class Book

	def initialize
		@hh = {}
	end
	
	def add_person options
		# добавляет пару в хеш
		puts 'Уже существует!' if @hh[options[:name]]
		
		@hh[options[:name]] = options[:age]
	end


	def show_all
		# показывает хеш
		@hh.keys.each do |key|
			age = @hh[key]
			puts "Name: #{key}, age: #{age}"
		end
	end

	def hh
		@hh  # то же самое что и return @hh
	end

end

b = Book.new
b.add_person :name => 'Walt', :age => 50
b.show_all

puts b.hh
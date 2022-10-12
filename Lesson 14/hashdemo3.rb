class Book

	attr_reader :last_person

	def initialize
		@hh = {}
		@last_person
	end
	
	def add_person options
		# добавляет пару в хеш
		puts 'Уже существует!' if @hh[options[:name]]
		
		@hh[options[:name]] = options[:age]
		@last_person = options[:name]
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

	# # Применили Attribut Reader, применяется для чтения и для записи переменных класса,
	# # применяется только с символами (symbols):
	#
	# # attr_accessor :aa     - RW метод для полного доступа
	# # attr_writer :aa     - W метод для записи
	# # attr_reader :aa   - R метод для чтения
	
	# def last_person
	# 	@last_person		
	# end

end

b = Book.new
b.add_person :name => 'Walt', :age => 50
b.add_person :name => 'Will', :age => 53
b.add_person :name => 'Jessie', :age => 45
b.add_person :name => 'James', :age => 34
b.show_all

puts b.hh
puts "Последнее имя #{b.last_person}"
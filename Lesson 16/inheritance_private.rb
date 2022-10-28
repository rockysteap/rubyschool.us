class Animal

	def initialize name
		@name = name
	end

	def run
		puts "#{@name} is running..."
	end

	def jump
		eat
		puts "#{@name} is jumping..."
	end

	private

	def eat
		puts "I am eating"
	end

end

animal = Animal.new 'cat'
animal.jump
# animal.eat  # Метод private недоступен для пользователя. Доступен для вызова только внутри класса.
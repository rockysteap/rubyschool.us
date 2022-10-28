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

	def sleep
		puts 'I am sleeping!'
	end

end


class Dog < Animal

	def initialize
		super 'dog'
	end

	def bark
		eat
		puts 'Woof-woof!'
		sleep
	end

end


dog = Dog.new
dog.bark

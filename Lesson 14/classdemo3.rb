# Самолет
class Airplane
	attr_reader :model	# модель
	attr_reader :altitude	# высота
	attr_accessor :speed	# скорость

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = 800
		@altitude = 10_000
	end

	def land
		@speed = 0
		@altitude = 0
	end

	def moving?  # ? - в конце названия метода означает, что мы ждем от метода True или False
		@speed > 0
	end

end

models = ['Airbus-320', 'Boeing-777', 'IL-86']
planes = []

1000.times do
	model = models[rand(0..2)]
	plane = Airplane.new(model)

	if rand(0..2) == 1
		plane.fly
	end

	plane.speed = rand(500..800)
	
	planes << plane
end

planes.each do |plane|
	puts "Model: #{plane.model}, Speed: #{plane.speed}, Alt: #{plane.altitude}"
	puts "Is moving: #{plane.moving?}"
end
class Airport

	attr_reader :planes
	attr_reader :name

	def initialize name
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end

end


class Plane

	attr_reader :model

	def initialize model
		@model = model
	end

end


# Создание аэропортов
	
airports = []

airport1 = Airport.new 'SVO'
airport2 = Airport.new 'DME'

airports << airport1
airports << airport2

# Cоздание самолетов

plane1 = Plane.new 'Boeing-777'
plane2 = Plane.new 'A-320'
plane3 = Plane.new 'IL-76'

airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

plane_a = Plane.new 'AA1'
plane_b = Plane.new 'BB1'
plane_c = Plane.new 'CC1'

airport2.add_plane plane_a
airport2.add_plane plane_b
airport2.add_plane plane_c

puts airport1.planes.class

# airports.each do |airport|
# 	puts "Airport: #{airport.name}"

# 	airport.planes.each do |plane|
# 		puts "Plane: #{plane.model}"
# 	end

# end
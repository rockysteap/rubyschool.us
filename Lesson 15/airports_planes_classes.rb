class Airport

	attr_accessor :airplanes
	attr_reader :name

	def initialize name
		@name = name
		@airplanes = []
	end

	def add_plane plane
		@airplanes << plane
	end

	def show
		puts @airplanes		
	end

end


class Plane

	attr_reader :model

	def initialize model
		@model = model
	end

end

world_airports = %w[Hartsfield Capital JFK Heathrow Haneda Pudong Indira]

world_plane_models = %w[Airbus-A310 Airbus-A319 Airbus-A320 Airbus-A330 Airbus-A380 
				  Boeing-737 Boeing-747 Boeing-757 Boeing-767 Boeing-777
				  ИЛ-62 ИЛ-86 ИЛ-96 ТУ-154 ТУ-204]

	
airports = []  # список экземпляров класса Airport 	
names_tmp = []	 # темп для выбора уникальных имен

while names_tmp.size < 2 do
	# puts names_tmp.size
	name = world_airports[rand(0..(world_airports.length-1))]
	if not names_tmp.include? name # проверка на уникальность имени аэропорта
		names_tmp << name 
		airport = Airport.new name 
		airports << airport
	end
end

airports.each_with_index do |airport, i|
	# puts airport
	# puts i
	3.times do
		model = world_plane_models[rand(0..(world_plane_models.length-1))]
		plane = Plane.new model
		# puts plane.model
		airports[i].airplanes << plane
	end
end


# # Вручную работает
# puts airports[0].name
# puts airports[1].name

# airports[0].add_plane 'Jumbo'
# airports[0].add_plane 'Kumbo'
# airports[0].add_plane 'Lumbo'

# airports[1].add_plane 'Mumbo'
# airports[1].add_plane 'Numbo'
# airports[1].add_plane 'Oumbo'

# puts airports[0].airplanes
# puts airports[1].airplanes

# puts airports[0].airplanes[0].model

# Итого:
airports.each_with_index do |n, i|
	puts "\nАэропорт #{i+1}: #{airports[i].name}\n"
	airports[i].airplanes.each_with_index do |m, j|
	  	puts "Самолет #{j+1}: #{airports[i].airplanes[j].model}"
		# puts m
		# puts airports[i].airplanes[j]
		# puts "Сравнение: #{m.equal? airports[i].airplanes[j]}"
	end
end

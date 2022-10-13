class Album

	attr_reader :name
	attr_reader :songs

	def initialize name
		@name = name
		@songs = []

	end

	def add_song song
		@songs << song
	end

end

class Song

	attr_reader :name, :duration
	
	# name, duration
	def initialize name, duration
		@name = name
		@duration = duration
	end

end



album = Album.new 'Innuendo'

song1 = Song.new 'The show must go on', 6
song2 = Song.new 'Ride the wild wind', 4
song3 = Song.new 'Innuendo', 6

album.add_song song1
album.add_song song2
album.add_song song3

puts album.songs[1].name

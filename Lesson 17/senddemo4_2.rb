﻿class Something
	attr_accessor :name

	def initialize
		@name = "Mike"
	end
end

s = Something.new
puts s.inspect

puts s.name
class Manager
	def self.say_hi # self. - статическая функция
		puts 'Hello!'
	end
end

class Hipster
	def self.say_hi
		puts 'Hiiiii, yo!'
	end
end

class Jessie_Pinkman
	def self.say_hi
		puts 'Hi, bitch!'
	end
end

Manager.say_hi
Hipster.say_hi
Jessie_Pinkman.say_hi

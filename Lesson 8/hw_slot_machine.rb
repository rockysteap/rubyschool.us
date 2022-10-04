puts
print "Сколько вам лет?"
age = gets.to_i
print "Хотите играть? (Y/N)"
answer = gets.strip.capitalize

if age >= 18 && answer == "Y"
	puts "Хорошо, поиграем!"
	puts
	money = 1000
	puts "Ваш баланс $#{money}"

	while true
	puts
	puts "Введите Enter чтобы дернуть ручку"
	gets

	#1000.times do
		
		x = rand(0..9)
		y = rand(0..9)
		z = rand(0..9)

		# animate x

		print "Выпало  "

		25.times do |counter|
			random_numbers = rand(0..9)
			if counter < 24
				print "#{random_numbers}\e[D"
				# print "\e[D"
				sleep 0.02
			else print "#{x} | "
			end
		end	

		# animate y

		25.times do |counter|
			random_numbers = rand(0..9)
			if counter < 24
				print random_numbers
				print "\e[D"
				sleep 0.02
			else print "#{y} | "
			end
		end	

		# animate z

		25.times do |counter|
			random_numbers = rand(0..9)
			if counter < 24
				print random_numbers
				print "\e[D"
				sleep 0.02
			else print "#{z}  "
			end
		end

		# print "Выпало #{x} | #{y} | #{z}"

		# 000

		if x == 0 && y == 0 && z == 0
			puts "Ваш баланс обнулен!"
			money = 0
		end

		# 111

		if x == 1 && y == 1 && z == 1
			puts "Вам зачислено 10 долларов"
			money += 10
		end

		# 123

		if x == 1 && y == 2 && z == 3
			puts "Вы потеряли 123 доллара"
			money -= 123
		end

		# 222
		
		if x == 2 && y == 2 && z == 2
			puts "Вам зачислено 20 долларов"
			money += 20
		end

		# 333
		
		if x == 3 && y == 3 && z == 3
			puts "Вам зачислено 30 долларов"
			money += 30
		end

		# 444
		
		if x == 4 && y == 4 && z == 4
			puts "Вам зачислено 40 долларов"
			money += 40
		end

		# 555
		
		if x == 5 && y == 5 && z == 5
			puts "Вам зачислено 50 долларов"
			money += 50
		end

		# 666
		
		if x == 6 && y == 6 && z == 6
			puts "Вы потеряли половину денег"
			money /= 2
		end

		# 777
		
		if x == 7 && y == 7 && z == 7
			puts "Вы потеряли 70 долларов"
			money -= 70
		end

		# 888

		if x == 8 && y == 8 && z == 8
			puts "Вы потеряли 80 долларов"
			money -= 80
		end

		# 999

		if x == 9 && y == 9 && z == 9
			puts "Вы потеряли 90 долларов"
			money -= 90
		end

		# 059

		if x == 0 && y == 5 && z == 9
			puts "Вы удвоили деньги!"
			money *= 2
		end

		if money < 0
			puts "Вы проиграли всё!"
			exit
		end

		puts "Ваш баланс: $#{money}"

	end
end
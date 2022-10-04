x = rand(1..100)
g = 10 # g - guess
n = 1 # n - counter

system "cls"
puts "Я загадал число, угадай какое? (от 1 до 100)"
puts "У тебя есть #{g} попыток"
puts

while g > 0
	print "Попытка #{n}, осталось #{g} попыток, угадай число: "
	a = gets.chomp.to_i
	
	if a == x
		puts "Угадали, вы молодец!"
		gets
		exit
	elsif a < x
		print "Не угадали, число больше > #{a}\n"
	elsif a > x
		print "Не угадали, число меньше < #{a}\n"
	else
		puts "Некорректный ввод"
		gets
	end
	g -= 1
	n += 1
end

puts
puts "В следующий раз обязательно угадаете"
gets

system "cls"
puts
puts "Привет! Это калькулятор!"
puts
puts "Введите два числа и выберите действие."
puts
puts "Введите '+' для сложения"
puts "Введите '-' для вычитания"
puts "Введите '*' для умножения"
puts "Введите '/' для деления"
puts
print "Введите первое число: "
a = gets.to_f
print "Введите второе число: "
b = gets.to_f
print "Что будем делать? ( + - * / ): "
action = gets.chomp

if action == "+"
	action_result = "сложение"
	result = a + b
elsif action == "-"
	action_result = "вычитание"
	result = a - b
elsif action == "*"
	action_result = "умножение"
	result = a * b
elsif action == "/"
	if b == 0
		puts
		puts "Делить на ноль нельзя!"
		exit
	else
		action_result = "деление"
		result = a / b
	end
else 
	puts "Что-то пошло не так. Нажмите Enter для выхода."
	gets
	exit
end

puts
puts "Выполняем #{action_result}"
puts "-" * 24
puts "#{a} #{action} #{b} = #{result}"
puts
puts "Округленный результат #{result.round(2)}"
gets

system 'cls'
s = []
@std = []

s.push("Вася", "Петя", "Галя", "Толя", "Настя", 
	"Вова", "Миша", "Глаша", "Маша", "Саша", "Аркаша", 
	"Степаша", "Ваня", "Аня", "Маня", "Валя", "Моня", 
	"Даня", "Саня", "Люба", "Гриша")


# добавляем рандомный возраст

n = 0
s.each do |i|
	a = s[n]
	b = rand(16..49)
	#puts "#{a}, #{b}"
	@std << [a, b]
	n += 1
end


def display_students_list 
	@std.sort!
	puts "Выводим список студентов:"
	n = 0
	@std.each do |item|
		n += 1
		puts "#{n}. #{item[0]}, #{item[1]}"
	end	
end


def add_student
	puts "Введите имя нового студента:"
	name = gets.strip.capitalize
	puts "Введите возраст нового студента:"
	age = gets.strip
	if name != "" && age != ""
		@std << [name, age]
	else
		puts "Некорректный ввод, нажмите Enter для продолжения"
		gets
	end
end


def remove_student
	puts "Введите номер для удаления:"
	n = gets.strip.to_i
	if n <= @std.length && n > 0
		@std.delete_at(n-1)
		puts "Студент номер #{n} удален из списка."
	else
		puts "Некорректный ввод, нажмите Enter для продолжения"
		gets
	end	
end


def draw_menu
	w = 40 # width of message
	o = 4 # offset for the menu
	mmline1 = "Добро пожаловать в журнал:"
	mmline2 = "(1) - Вывести список студентов"
	mmline3 = "(2) - Добавить нового студента"
	mmline4 = "(3) - Удалить студента"
	mmline5 = "(4) - Выйти из журнала"
	puts "+#{"-" * w}+
		  |#{" "*((w-mmline1.length)/2)}#{mmline1}#{" "*((w-mmline1.length)/2)}|
		  |#{" " * w}|
		  |#{" "*((w-mmline2.length)/2)}#{mmline2}#{" "*((w-mmline2.length)/2)}|
		  |#{" "*((w-mmline3.length)/2)}#{mmline3}#{" "*((w-mmline3.length)/2)}|
		  |#{" "*((w-mmline4.length)/2-o)}#{mmline4}#{" "*((w-mmline4.length)/2+o)}|
		  |#{" "*((w-mmline5.length)/2-o)}#{mmline5}#{" "*((w-mmline5.length)/2+o)}|
		  +#{"-" * w}+".lines.map { |line| line.strip.center(60) }.join("\n")	
end


loop do
	draw_menu
	mmi = gets.strip
	if mmi == "1"
		display_students_list
	elsif mmi == "2"
		add_student
	elsif mmi == "3"
		remove_student
	elsif mmi == "4"
		exit
	else
		puts "Некорректный ввод, нажмите Enter для продолжения"
		gets
	end
end

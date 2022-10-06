# Encoding: cp866
#system "cls"

students = []

students.push("Вася", "Петя", "Галя", "Толя", "Настя", 
	"Вова", "Миша", "Глаша", "Маша", "Саша", "Аркаша", 
	"Степаша", "Ваня", "Аня", "Маня", "Валя", "Моня", 
	"Даня", "Саня", "Люба", "Гриша")

students.sort!

loop do
	
	i = 0
	puts "Список студентов:"
	students.each do |name|
		i += 1
		puts "#{i} #{name}"
	end
	
	puts "Введите номер для удаления:"
	n = gets.strip.to_i

	if n <= students.length && n > 0
		students.delete_at(n-1)
		puts "Ученик номер #{n} удален из списка. Enter - чтобы продожить."
	else
		puts "Некорректный ввод"
	end	
	gets

end
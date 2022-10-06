# Encoding: cp866
#system "cls"

students = []

students.push("Вася", "Петя", "Галя", "Толя", "Настя", 
			  "Вова", "Миша", "Глаша", "Маша", "Саша", 
			  "Аркаша", "Степаша", "Ваня", "Аня", "Маня", 
			  "Валя", "Моня", "Даня", "Саня", "Люба", 
			  "Гриша")

loop do
	
	i = 0
	puts "Список студентов:"
	students.sort!
	students.each do |namecell|
		i += 1
		puts "#{i}. #{namecell}" #, #{agecell}"
	end
	
	print "Введите имя для добавления:"
	name = gets.strip.capitalize.encode('cp866')
	# print "Уточните возраст:"
	# age = gets.to_i

	if name != "" # && age >=0 && age <=90
		students << name
		puts "Ученик #{name} добавлен в список. Enter - чтобы продожить."
	else
		puts "Некорректный ввод. Enter - чтобы продожить."
		# break
	end	
	gets

end
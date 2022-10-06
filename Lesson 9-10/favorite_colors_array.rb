# Encoding: cp866
# system "cls"

arr = []

while true
	puts "Введите ваш любимый цвет (или stop для выхода)"
	color = gets.strip
		if color != "stop"
			arr << color
		else break
		end
end

puts "Мои любимые цвета:"
puts arr.reverse.uniq
gets
# Encoding: cp866
# system "cls"

arr = []

while true
	puts "������ ��� ��� 梥� (��� stop ��� ��室�)"
	color = gets.strip
		if color != "stop"
			arr << color
		else break
		end
end

puts "��� ��� 梥�:"
puts arr.reverse.uniq
gets
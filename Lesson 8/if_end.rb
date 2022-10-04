print "Сколько гостей к вам придет?"
n = gets.to_i
   
if n < 0
	puts "Ошибка"
	exit
end


if n != 0
	puts "Отлично, кто-то будет."
end

if n == 1
	puts "Придет один."
end

if n == 2
	puts "Придут двое."
end

if n > 2
	puts "Будет много гостей."
end

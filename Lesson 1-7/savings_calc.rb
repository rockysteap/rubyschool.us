# encoding: cp866
puts

print "Сколько лет будем копить: "
years = gets.to_i
print "Какую сумму будем откладывать в месяц: "
monthly_deposit = gets.to_f

summ = 0

1.upto(years) do |year|
	1.upto(12) do |month|
		summ += monthly_deposit 
		puts "Год #{year}, месяц #{month}, отложено: #{summ}"
	end
end


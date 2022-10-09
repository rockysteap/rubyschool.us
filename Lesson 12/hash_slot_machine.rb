# Хеш вида:

hh = {111 => 11, 
	  222 => 22,
	  333 => 33,
	  444 => 44,
	  555 => 55,
	  666 => 66,
	  777 => 1000,
	  888 => 88,
	  999 => 100
}

balance = 100

loop do

	print "\nPress Enter to play!"
	gets

	a = rand(100..999)
	
	# Сравнение и итерация через каждый ключ в хеше
	
	if hh[a]
		balance = balance + hh[a]
	else
		balance = balance - 5
	end

	puts "Current combination: #{a}"
	
	if balance < 0
		puts "You've lost all your money"
		sleep 1
		exit
	end
	
	puts "Your balance: $#{balance}"

end
add_10 = lambda { |x| x + 10 }
add_20 = lambda { |x| x + 20 }
sub_5 = lambda { |x| x - 5 }

# если до 300, то прибавлять 10, 
# если до 600, то прибавлять 20, 
# от 600 и выше отнимать 5

balance = 1000

hh = { 111 => add_10, 222 => add_10, 333 => add_20, 444 => add_20, 555 => add_20, 
	   666 => sub_5, 777 => sub_5, 888 => sub_5, 999 => sub_5}


loop do
	
	x = rand(100..999)
	p "Spin: #{x}"

	if hh[x]
		f = hh[x]
		balance = f.call balance
		p 'Lambda called'
	else
		balance = sub_5.call balance
	end

	p "Balance #{balance}"
	p 'Press \'Enter\' to continue..'
	gets
end
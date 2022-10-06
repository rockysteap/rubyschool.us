# encoding: cp866
# system "cls"

# comp_ch - computer choice
# user_ch - user choice

print "Choose (1)rock, (2)scissors or (3)paper:"
answer = gets.strip

if answer == "1" 
	user_ch = :rock
elsif answer == "2"
	user_ch = :scissors
elsif answer == "3"
	user_ch = :paper
else
	print "Wrong input, press Enter to exit program"
	exit
end

arr = []
# arr = [:rock, :scissors, :paper]
arr += %i(rock scissors paper)

comp_ch = arr[rand(0..2)]

puts "You > #{user_ch} " # id #{user_ch.object_id}"
puts "Comp > #{comp_ch} " # id #{comp_ch.object_id}"

if user_ch == comp_ch
	puts "No one wins! It's a draw!"
elsif user_ch == :rock
	if comp_ch == :scissors
		puts "You win!"
	elsif comp_ch == :paper
		puts "Computer wins!"
	end
elsif user_ch == :scissors
	if comp_ch == :rock
		puts "Computer wins!"
	elsif comp_ch == :paper
		puts "You win!"
	end
elsif user_ch == :paper
	if comp_ch == :scissors
		puts "Computer wins!"
	elsif comp_ch == :rock
		puts "You win!"
	end
else
end

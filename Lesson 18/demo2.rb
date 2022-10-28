def is_password_weak? my_password
	input = File.open "passwords.txt", "r"
	
	while (line = input.gets)
		line.strip!
		
		if line.include? my_password
			return true
		end
	end

	return false
end


print 'Enter password: '
my_password = gets.strip

if is_password_weak? my_password
	puts "You password '#{my_password}' is weak"
else
	puts 'Your password is not weak'
end
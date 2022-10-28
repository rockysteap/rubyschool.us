File.open('demo1_1.txt', 'w') { |file| 
File.open('passwords.txt', 'r+') { |input|

while (line = input.gets)

	if line.strip.size == 6

		file.write line
	end
end
}
}
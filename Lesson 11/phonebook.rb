phonebook = {'Mike' => '35373', 'Jessie' => '31380', 'Walt' => '32211'}

loop do
	puts "Enter name: "
	name = gets.strip.capitalize
	
	puts "Enter phone#: "
	phone = gets.strip
	
	if name == "" || phone == ""
		break
	else 
		phonebook[name] = phone
	end
end

phonebook.each do |key, value|
	puts "Name: #{key}, Phone: #{value}"
end
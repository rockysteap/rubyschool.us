require 'sinatra'

get '/' do
	erb :index	
end

post '/' do
	
	@user_name = params[:user_name]
	@phone     = params[:phone]
	@date_time = params[:date_time]

	@login = 	params[:login]
	@password =	params[:password]
	
	if @login == 'admin' && @password == 'secret'

		@users_file = File.open("./public/users.txt")
		erb :users
			
	elsif
		@title = 'Thank you!'
		@message = "Dear #{@user_name}, we'll be waiting for you on #{@date_time}"

		f = File.open './public/users.txt', 'a'
		f.write "User: #{@user_name}, Phone: #{@phone}, Date and time: #{@date_time}\n"
		f.close

		erb :message 
	
	end
end


# <a href="/contacts">Ссылка на контакты</a>  # html формат для erb

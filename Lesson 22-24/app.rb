require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	@error = 'Something went wrong!'
	erb :about	
end

get '/contacts' do
	erb :contacts	
end

get '/reserve' do
	erb :reserve	
end

post '/reserve' do
	
	@guestname = params[:guestname]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

	# хеш
	hh = {  :guestname => 'Enter name', 
			:phone => 'Enter phone', 
			:datetime => 'Enter date and time' }

	@error = hh.select{ |key,_| params[key] == ''}.values.join(", ")

	if @error != ''
		return erb :reserve
	end

	# # для каждой пары ключ-значение
	# hh.each do |key, value|
		
	# 	# если параметр пуст
	# 	if params[key] == ''
	# 		# переменной error присвоить value из хеша hh
	# 		# (а value из хеша hh это сообщение об ошибке)
	# 		# т.е. переменной error присвоить сообщение об ошибке
	# 		@error = hh.select{ |key,_| params[key] == ''}.values.join(", ")
	# 		# @error = hh[key]

	# 		# вернуть представление(view) reserve
	# 		return erb :reserve
	# 	end
	# end

	erb "OK, guestname is #{@guestname}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"

end

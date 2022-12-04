require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def is_barber_exists? db, name
	db.execute('select * from Barbers where name=?', [name]).length > 0
end

def seed_db db, barbers
	barbers.each do |barber|
		if !is_barber_exists? db, barber
			db.execute 'insert into Barbers (name) values (?)', [barber]
		end
	end
end

def get_db
	db =  SQLite3::Database.new 'barbershop.db'
	db.results_as_hash = true
	return db
end

before do
	db = get_db
	@barbers = db.execute 'select * from Barbers'
end


configure do
	db = get_db

	db.execute "CREATE TABLE IF NOT EXISTS Users (id INTEGER PRIMARY KEY AUTOINCREMENT, 
												   username TEXT, 
											   	   phone TEXT, 
										   		   datestamp TEXT, 
											  	   barber TEXT, 
											   	   color TEXT)"

	db.execute "CREATE TABLE IF NOT EXISTS Contacts (id INTEGER PRIMARY KEY AUTOINCREMENT, 
										 		  	  email TEXT, 
										 			  message TEXT)"
	
	db.execute "CREATE TABLE IF NOT EXISTS Barbers (id INTEGER PRIMARY KEY AUTOINCREMENT, 
										 		  	  name TEXT)"							

	seed_db db, ['Jessie Pinkman', 'Walter White', 'Gus Fringe', 'Mike Ehrmantraut']
end


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

	db = get_db
	db.execute 'insert into 
		Users (username, phone, datestamp, barber, color) 
		values ( ?, ?, ?, ?, ? )', [@guestname, @phone, @datetime, @barber, @color]

	erb "<h2>Спасибо, Вы записались</h2>"

end

get '/showguests' do
  db = get_db

  @results = db.execute 'select * from Users order by id desc'

  erb :showguests
end
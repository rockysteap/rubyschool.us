require 'sqlite3'

db = SQLite3::Database.new 'BarberShop.db'

# db.execute "INSERT INTO Cars (Name,Price) VALUES ('Jaguar', 7777)"

# db.execute "SELECT * FROM Cars" do |car|
# 	puts car
# 	puts '===='
# end

db.execute "CREATE TABLE IF NOT EXISTS Users (Id INTEGER PRIMARY KEY AUTOINCREMENT, 
											Name VARCHAR, 
										   Phone VARCHAR, 
									   DateStamp VARCHAR, 
										  Barber VARCHAR, 
										   Color VARCHAR)"

db.execute "CREATE TABLE IF NOT EXISTS Contacts (Id INTEGER PRIMARY KEY AUTOINCREMENT, 
									 		  Email VARCHAR, 
									 		Message VARCHAR)"


db.execute "INSERT INTO Users (Name, Phone, DateStamp, Barber, Color) 						   
			VALUES ('Mossi', '+79008007060', '14.08 at 22:32', 'Jessie Pinkman', 'Turquoise')"

db.execute "INSERT INTO Contacts (Email, Message) 
			VALUES ('mossi@email.com', 'Hello! Need a haircut')"

db.execute "INSERT INTO Users (Name, Phone, DateStamp, Barber, Color) 						   
			VALUES ('Julia', '+79018117161', '15.08 at 12:20', 'Walter White', 'Bold red')"

db.execute "INSERT INTO Contacts (Email, Message) 
			VALUES ('julia@email.com', 'Hi! Want my haircolor changed')"

db.execute "INSERT INTO Users (Name, Phone, DateStamp, Barber, Color) 						   
			VALUES ('Ilia', '+79028227262', '17.08 at 15:00', 'Gus Fring', 'Yellow')"

db.execute "INSERT INTO Contacts (Email, Message) 
			VALUES ('ilia@email.com', 'Hello, ive just reserved a time.')"

db.execute "INSERT INTO Users (Name, Phone, DateStamp, Barber, Color) 						   
			VALUES ('Emilia', '+79038337363', '18.08 at 16:20', 'Jessie Pinkman', 'Bold blue')"

db.execute "INSERT INTO Contacts (Email, Message) 
			VALUES ('emlia@email.com', 'Morning! Catch a reserve!')"

db.execute "INSERT INTO Users (Name, Phone, DateStamp, Barber, Color) 						   
			VALUES ('Olia', '+79048447464', '20.08 at 14:00', 'Walter White', 'Orange')"

db.execute "INSERT INTO Contacts (Email, Message) 
			VALUES ('olia@email.com', 'HI! HI! Look forward getting a haircut')"

db.execute "INSERT INTO Users (Name, Phone, DateStamp, Barber, Color) 						   
			VALUES ('Maximus', '+79058557565', '12.09 at 13:00', 'Gus Fring', 'Purple')"

db.execute "INSERT INTO Contacts (Email, Message) 
			VALUES ('maximus@email.com', 'Hola! Be waiting for me!')"

db.close


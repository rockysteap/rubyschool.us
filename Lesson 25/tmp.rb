require 'sqlite3'

# db = SQLite3::Database.new 'test.db'

# db.execute "INSERT INTO Cars (Name,Price) VALUES ('Jaguar', 7777)"

# db.execute "SELECT * FROM Cars" do |car|
#   puts car
#   puts '===='
# end


db = SQLite3::Database.new 'BarberShop.db'


db.execute "CREATE TABLE IF NOT EXISTS Users (Id INTEGER PRIMARY KEY AUTOINCREMENT, 
                                            Name VARCHAR, 
                                           Phone VARCHAR, 
                                       DateStamp VARCHAR, 
                                          Barber VARCHAR, 
                                           Color VARCHAR)"

db.execute "CREATE TABLE IF NOT EXISTS Contacts (Id INTEGER PRIMARY KEY AUTOINCREMENT, 
                                              Email VARCHAR, 
                                            Message VARCHAR)"


db.close

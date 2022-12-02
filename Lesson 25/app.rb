require 'sqlite3'

db = SQLite3::Database.new 'test.db'

# db.execute "INSERT INTO Cars (Name,Price) VALUES ('Jaguar', 7777)"

db.execute "SELECT * FROM Cars" do |car|
	puts car
	puts '===='
end

db.close
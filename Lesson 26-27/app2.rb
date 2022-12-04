require 'sqlite3'

def get_db
	SQLite3::Database.new 'barbershop.db'
end

db = get_db
results = db.execute 'select * from Users order by id desc'


r = results[0][1]
puts results.class

print r
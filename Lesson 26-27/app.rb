require 'sqlite3'

db = SQLite3::Database.new 'barbershop.db'

# # using array
# db.execute 'select * from Users' do |row|  # row is an array
# 	# puts row  # full array from each row in db
# 	# puts row[1]  # data from index [1]
# 	puts "#{row[1]} has reservation on #{row[3]}"
# 	puts '====='


# using hash ( the true way :) )

db.results_as_hash = true

db.execute 'select * from Users' do |row|  # row is a hash
	print row['username']
	print "\t-\t"
	puts row['datestamp']
	puts '======='

end
def show_book book
	# выводит на экран записную книгу
	puts "=" * 30 + "<br>" 
	book.keys.each do |key|
		age = book[key]
		puts "<i>Name:</i> #{key}, age: <b>#{age}</b> <br>"
	end
	puts "=" * 30 + "<br>"
end

book1 = { 'Mike' => 65, 'Molly' => 63, 'Minnie' => 55 }
# show_book book1

book2 = { 'Walt' => 50, 'Wins' => 52, 'Wanda' => 57 }
# show_book book2

# book1.merge! book2
# show_book book1

puts "<body>"

book = book1.merge book2
show_book book
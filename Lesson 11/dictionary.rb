dict = {'dog' => 'собака', 'cat' => 'кошка', 'girl' => 'девушка'}

loop do

	print 'Введите слово: '
	word = gets.strip

	translation = dict[word]
	puts "Перевод слова: #{translation}"



end
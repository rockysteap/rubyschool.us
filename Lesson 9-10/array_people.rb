# Encoding: cp866
# system "cls"

arr = %w[walt hank jr jessie lidia]

x = 0

arr.each do |name|
	puts "#{x} #{name}"
	x += 1
end
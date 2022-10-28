
# # можно так
# sub_10 = lambda do |x|
# 	return x - 10
# end

# # или так
# sub_10 = lambda { |x| return x - 10 }

# или вот так
sub_10 = lambda { |x| x - 10 }


a = sub_10.call 1000
puts a
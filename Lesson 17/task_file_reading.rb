input = File.open "task.txt", "r"

# # 12 months total - GitHub

# total = 0
# while (line = input.gets)
# 	total += line.split(",")[1].to_i
# end
# input.close
# puts "Year's total is #{total}."


months = 12
total = 0
i = 0

while (line = input.gets) && i < months
	arr = line.split(",")
	value = arr[1].to_i
	total = total + value
	i += 1
end

input.close

puts "#{months} months total is #{total}."









# puts arr
# print arr[0].split(",")[1].to_i



# arr.each_with_index do |array, i|
#  	# puts i
#  	# puts array
#  	arr[i].split(",")[1].to_i
#  	puts arr[i].split(",")[1].to_i

# end
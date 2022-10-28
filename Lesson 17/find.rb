# # список файлов c абсолютными путями
# files = Dir['E:/Coding/Projects/Ruby/**/*'].select { |i| File.file?(i) }
# # puts Dir['E:/Coding/Projects/Ruby/**/*'].select.class  # => Enumerator
# puts files

# # список файлов без путей
# Dir['**/*.*']  # - по всему диску
# Dir['*/*.*']  # - в рабочей папке

# def check_dir dir
# 	pass
# end


user_input_disk = 'c'.capitalize  # TODO: user input

path = "#{user_input_disk}:"
filename = 'lost.txt'  # TODO: user input


def check_file path, filename
	
	dir = Dir.glob("#{path}*.*")
	
	dir.each do |x|
		# puts x.class
		if x == "#{path}#{filename}"
			puts "Файл #{filename} найден по пути #{File.expand_path(File.dirname(x))}"
			exit  # выходит после первого найденного / exits after first found
		end
	end
end


# check_file path, filename  # calling method
# Dir.glob("#{path}**").each do |variable|
	
# 	puts variable
# end


# p Dir["#{path}/Temp/**/#{filename}"]
p Dir["#{path}/**"]
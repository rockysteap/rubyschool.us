# Encoding: cp866
#system "cls"

students = []

students.push("����", "����", "����", "����", "�����", 
			  "����", "���", "����", "���", "���", 
			  "�ઠ�", "�⥯��", "����", "���", "����", 
			  "����", "����", "����", "����", "�", 
			  "���")

loop do
	
	i = 0
	puts "���᮪ ��㤥�⮢:"
	students.sort!
	students.each do |namecell|
		i += 1
		puts "#{i}. #{namecell}" #, #{agecell}"
	end
	
	print "������ ��� ��� ����������:"
	name = gets.strip.capitalize.encode('cp866')
	# print "��筨� ������:"
	# age = gets.to_i

	if name != "" # && age >=0 && age <=90
		students << name
		puts "�祭�� #{name} �������� � ᯨ᮪. Enter - �⮡� �த�����."
	else
		puts "�����४�� ����. Enter - �⮡� �த�����."
		# break
	end	
	gets

end
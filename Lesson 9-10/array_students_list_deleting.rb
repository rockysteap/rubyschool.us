# Encoding: cp866
#system "cls"

students = []

students.push("����", "����", "����", "����", "�����", 
	"����", "���", "����", "���", "���", "�ઠ�", 
	"�⥯��", "����", "���", "����", "����", "����", 
	"����", "����", "�", "���")

students.sort!

loop do
	
	i = 0
	puts "���᮪ ��㤥�⮢:"
	students.each do |name|
		i += 1
		puts "#{i} #{name}"
	end
	
	puts "������ ����� ��� 㤠�����:"
	n = gets.strip.to_i

	if n <= students.length && n > 0
		students.delete_at(n-1)
		puts "�祭�� ����� #{n} 㤠��� �� ᯨ᪠. Enter - �⮡� �த�����."
	else
		puts "�����४�� ����"
	end	
	gets

end
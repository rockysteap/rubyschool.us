# encoding: cp866

def get_command
	x = rand(1..4)
	
	if x == 1
		cmd = :left
	end	
	
	if x == 2
		cmd = :right
	end	

	if x == 3
		cmd = :up
	end	

	if x == 4
		cmd = :down
	end	

	cmd
end

command = get_command

puts "����祭� �������: #{command}"

if command == :left
	puts "����� ���� �����"
end

if command == :right
	puts "����� ���� ��ࠢ�"
end

if command == :up
	puts "����� ���� �����"
end

if command == :down
	puts "����� ���� ����"
end

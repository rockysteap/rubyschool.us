# encoding: cp866
puts

print "����쪮 ��� �㤥� ������: "
years = gets.to_i
print "����� �㬬� �㤥� �⪫��뢠�� � �����: "
monthly_deposit = gets.to_f

summ = 0

1.upto(years) do |year|
	1.upto(12) do |month|
		summ += monthly_deposit 
		puts "��� #{year}, ����� #{month}, �⫮����: #{summ}"
	end
end


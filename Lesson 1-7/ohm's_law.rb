print "Enter voltage: "
U = gets.chomp
print "Enter resistance: "
R = gets.chomp
I = U.to_f / R.to_f
print "Result: " + I.to_s + " A"

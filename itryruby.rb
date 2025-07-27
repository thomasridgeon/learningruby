puts 'hello, what\'s you\'re name?'
name = gets.chomp
var1 = name 
#puts 'hello' + ' ' + name + ' ,that\'s a lovely name'
#or below
puts "hello #{name} that\'s a lovely name"
puts 'what\'s you\'re middle name?'
name = gets.chomp
var2 = name 
"okay, so #{var1} #{var2}"
puts 'And what\'s you\'re last name?'
name = gets.chomp
var3 = name
puts "okay, got it. So you\'re full name is' #{var1} #{var2} #{var3}"
totalcharacters = var1.length + var2.length + var3.length 
puts "do you know the total characters in all your names is #{totalcharacters}"
#
puts ""
string1 = 'what\'s you\'re favourite number?'
puts string1
number = gets.chomp.to_i
puts "you entered #{number}" 
var1 = number
puts 'let\'s add 666 to your favourite number'
puts var1 + 666.to_i
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
#
puts "how can I help you?"
user_input = gets.chomp
puts "WHAT DO YOU MEAN #{user_input.upcase}?!?!?!"
# 
puts "you should write a book"
puts ""
lineWidth = 50
puts "Table of Contents".center(lineWidth)
chapter1_title = "Chatper 1: #{user_input}"
chapter1_page = "Page 1"
#calculate the space needed between title and page below:
space_needed = lineWidth - chapter1_title.length - chapter1_page.length
puts chapter1_title + (" " * space_needed) + chapter1_page
#
puts "do you want me to give you a random number between 1-100? yes or no?"
user_response = gets.chomp.downcase
if user_response == "yes"
    random_number = (rand (100))
puts "okay, you're random number is #{random_number}"
elsif user_response == "no"
puts "okay, no problem"
else puts "I din't understand. Please answer 'yes' or 'no'"
end



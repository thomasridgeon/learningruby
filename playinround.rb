puts "hello sonny, what's your name?"
name = gets.chomp 
while name == name.downcase
  puts "WHAT'S THAT SONNY? YOU'RE GOING TO HAVE TO SPEAK UP"
  name = gets.chomp #I have to insert a gets.chomp inside the loop, otherwise the value of the name variable never changes.
end
while name == name.upcase
  puts "okay #{name.capitalize}, now I can hear you."
  name = gets.chomp #I have to insert a gets.chomp inside the loop, otherwise the value of the name variable never changes. 
end

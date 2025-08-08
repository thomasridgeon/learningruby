puts "is it your birthday?(yes/no)"
user_response = gets.chomp
if user_response.downcase == "yes"
  3.times do 
    puts "happy birthday to you!"
  end
end
names = ['Bob', 'Samantha', 'Steve']
birthdayppl = []

names.each do |name|
  #Using an iterator to avoid writing the question 3 times
puts "what about #{name}? yes/no"
user_response0 = gets.chomp
if user_response0.downcase == "yes"
  birthdayppl << name
  #The shovel operator is best used for adding one specific object at a time. It works for adding various data types, including numbers, strings, or even other arrays, but it always treats the item on its right side as a single element.
  puts "yay!"
else 
  puts "okay"
  end
end

if birthdayppl.empty?
  puts "No one is celebrating a birthday today."
else 
  birthdayppl.each do |person|
    puts "happy birthday #{person}!"
  end
end

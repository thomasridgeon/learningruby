puts "Hi! Give me a start year between 1000 and 1900. If you want me to choose one at random, type 'random' or press enter"
user_input = gets.chomp
year_to_display = nil 
if user_input.downcase = "random" or user_input.empty?
  year_to_display = rand(1000...1900)
  puts "I have chosen a start year for you."
else chosen_year = user_input.to_i 
  # I need to insert another if/else within this in order to check that the year chosen falls within the range I specified:
  if rand(1000...1900)
year_to_display = chosen_year
  else 
    puts "That year is not between 1000 and 1900. I'll pick one at random for you."
year_to_display = rand(1000...1900)
  end
end
puts "The start year is #{year_to_display}"
#
puts "Now give me an end year between 1900 and 2025. If you want me to choose one at random, type 'random' or press enter."
  user_input = gets.chomp
  year_to_display = nil
  if user_input.downcase = "random" or user_input.empty?
    year_to_display = rand(1900...2025)
    puts "I have chosen an end year for you"
  else chosen_year = user_input.to_i
    if rand(1900...2025)
      year_to_display = chosen_year
    else 
      puts "That year is not between 1900 and 2025. I'll pick one at random for you."
      year_to_display = rand(1900...2025)
    end
  end
  puts "The end year is #{year_to_display}"
#

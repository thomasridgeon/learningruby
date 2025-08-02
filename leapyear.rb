puts "Hi! Give me a start year between 1000 and 1900. If you want me to choose one at random, type 'random' or press enter"
user_input = gets.chomp
start_year_to_display = nil 
if user_input.downcase == "random" || user_input.empty?
  start_year_to_display = rand(1000...1900)
  puts "I have chosen a start year for you."
else chosen_year = user_input.to_i 
  # I need to insert another if/else within this in order to check that the year chosen falls within the range I specified:
  if chosen_year.between?(1000, 1900)
start_year_to_display = chosen_year
  else 
    puts "That year is not between 1000 and 1900. I'll pick one at random for you."
start_year_to_display = rand(1000...1900)
  end
end
puts "The start year is #{start_year_to_display}"
#
puts "Now give me an end year between 1900 and 2025. If you want me to choose one at random, type 'random' or press enter."
  user_input = gets.chomp
  end_year_to_display = nil
  if user_input.downcase == "random" || user_input.empty?
    end_year_to_display = rand(1900...2025)
    puts "I have chosen an end year for you"
  else chosen_year = user_input.to_i
    if chosen_year.between?(1900, 2025)
      end_year_to_display = chosen_year
    else 
      puts "That year is not between 1900 and 2025. I'll pick one at random for you."
      end_year_to_display = rand(1900...2025)
    end
  end
  puts "The end year is #{end_year_to_display}"
#
puts "Let's see how many leap years there are between #{start_year_to_display} and #{end_year_to_display}"
leap_year_count = 0
leap_years = [] 
(start_year_to_display..end_year_to_display).each do |year|
  if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    leap_year_count = leap_year_count + 1 
#or the shorthand way to write this would be leap_year_count += 1
#The +1 is there to act as a counter. The line leap_year_count += 1 is a shorthand way of saying "take the current value of leap_year_count and add 1 to it." This line is located inside the if statement that checks for a leap year. Therefore, every time a year passes the leap year test, this counter is incremented by one. By the time the loop has finished checking all the years, leap_year_count will hold the total number of leap years found in the specified range.
    leap_years << year
#leap_years << year, is a key part of how the program stores all the leap years it finds. leap_years: This is an array that was created earlier in the program with the line leap_years = []. An array is a data structure used to store a list of items. <<: This is the "shovel" operator in Ruby. It's a very common and idiomatic way to append a new element to the end of an array. year: This is the variable that holds the current year the loop is checking. Since this line is inside the if statement, we know that this specific year has been determined to be a leap year. So, when the program finds a year that meets the leap year criteria, this line of code takes that year and adds it to the leap_years array. By the time the loop has finished, the leap_years array will contain a list of every leap year in the range, which can then be used to display the full list to the user if they choose
  end 
end
puts "There are #{leap_year_count} leap years between #{start_year_to_display} and #{end_year_to_display}."
puts "Would you like me to list all the leap years between #{start_year_to_display} and #{end_year_to_display}? (yes/no)"
answer = gets.chomp.downcase
if answer == "yes"
  puts "Here is the list of all the leap years"
  leap_years.each do |leap_years|
    #leap_years: This is the array that you created earlier in the program with leap_years = []. The program adds every leap year it finds to this array. each: This is a method available on all arrays in Ruby. It's a fundamental looping construct that goes through each element of the array, one at a time. do |leap_year| ... end: This defines the block of code that will be executed for each item in the leap_years array.|leap_year|: This is a block variable. In each pass of the loop, this variable will hold the value of the current element from the leap_years array. The name leap_year is a choice you made to make the code readable, but you could have named it anything (e.g., |year|, |x|). The line puts leap_year inside the block simply prints the value of the current leap_year to the console.
    puts leap_years
  end
end

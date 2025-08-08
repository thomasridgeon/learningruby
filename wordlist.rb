puts "write as many words as you like, then hit enter"
chosenwords = gets.chomp
wordlist = []
wordlist.push(*chosenwords.split)
#.split splits the chosen words
#wordlist.push(*chosenwords.split): The * (the splat operator) here takes the array returned by split (e.g., ["cat", "dog", "tree"]) and passes each element as a separate argument to the push method. This adds all the words directly to the wordlist as individual strings.
puts "this is your wordlist: #{wordlist.join(', ')}"
#wordlist.join(', '): the join method prints the list without the brackets and quotes. This turns the array into a string, using ', ' as a separator, which gives a clean output.
puts "would you like to add any others? (yes/no)"
user_response = gets.chomp
if user_response == "yes"
  puts "tell me the words you'd like to add, then hit enter"
  additionalwords = gets.chomp
  wordlist.push(*additionalwords.split)
  puts "okay, you're updated wordlist is: #{wordlist.join(', ')}"
else
  puts "okay, we'll keep your original wordlist as is"
end
puts "would you like me to sort your word list by alphabetical order? (yes/no)"
sorted_list = wordlist.sort 
user_response = gets.chomp
if user_response == "yes"
puts "the sorted list is #{sorted_list.join (', ')}"
else
  puts "okay"
end
puts "would you like to know how many characters there are total in your wordlist? (yes/no)"
user_response = gets.chomp
if user_response == "yes"
  puts sorted_list.join.length
else 
  puts "okay"

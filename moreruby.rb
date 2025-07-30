puts "HEY SONNY HOW ARE YOU?"
user_response = ""
until user_response == user_response.upcase && !user_response.empty?
  user_response = gets.chomp
  if user_response != user_response.upcase 
    granny_response = "WHAT'S THAT SONNY?! YOU NEED TO SPEAK UP"
    puts granny_response
  else granny_response = "OKAY, NOW I CAN HEAR YOU."
    puts granny_response 
  end 
end

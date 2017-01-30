#process multiple users

puts "How many employees will be processed?"
num = gets.chomp.to_i
counter = 1

#user input

def determine_vampire
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i 
puts "What year were you born?"
dob = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic = gets.chomp
puts "Would you like to enroll in the company health insurance? (y/n)"
enroll = gets.chomp
puts "Please list your allergies."
$allergy = gets.chomp

#determine if vampire

loop do 
  puts "any other allergies? If not, please enter 'done'"
  @allergy = gets.chomp
  break if @allergy == "done"
  break if @allergy == "sunshine"
end

if $allergy == "sunshine" || @allergy == "sunshine"
  puts "Probably a vampire"
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire"
elsif age != 2017-dob && (garlic == "n" && enroll == "n")
  puts "Almost certainly a vampire"
elsif age != 2017-dob && (garlic == "n" || enroll == "n")
  puts "Probably a vampire"
elsif age == 2017-dob && (garlic == "y" || enroll == "y")
  puts "Probably not a vampire"
else puts "Results inconclusive"
end

end

#run program until every user has been processed

while counter < num do determine_vampire
counter += 1
end

#run program

puts determine_vampire

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."






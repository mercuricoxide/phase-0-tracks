#Encrypt
#Write a method that takes an argument(password)
#Write a loop to iterate through each letter.
#Replace each letter with the next one.

#Decrypt
#Write a method that takes an argument(password)
#Write a loop to iterate through each letter.
#Replace each letter with the previous one.
#Loop through string length and use conditional statement to see which letters match password letters and return the previous one.

def encrypt(password)
 counter = 0
 result = ""
 while counter < password.length
      letter = password[counter]
 
   if letter == " "
     result << " "
   elsif letter == "z"
     result << "a"
   else
     result << letter.next
   end
   counter += 1
 end
 result
end



def decrypt(password)
 counter = 0
 alphabet = "abcdefghijklmnopqrstuvwxyz"
 result = ""
 while counter < password.length
      letter = password[counter]
 
   if letter == " "
     result << " "
   elsif letter == "a"
     result << "z"
   else
     alph_index = alphabet.index(letter) - 1
     result << alphabet[alph_index]
   end
   counter += 1
 end
 result
end

puts "Do you want to encrypt or decrypt?"
answer = gets.chomp
puts "Type a password!"
password = gets.chomp

if answer == "encrypt"
 puts encrypt(password)
else
 puts decrypt(password)
 
end
puts "Have a nice day!"
#Take a spy's real name "Felicia Torres".
#Create a fake name by swapping the first and last name

a = "Felicia Torres"
a.downcase!
b = a.split(" ").reverse.join(" ")

p b

#Change all vowels to the next vowel in 'aeiou' by finding their index and advancing to the next index by rotating the array of vowels.

 def next_vowel(name)
   vowel = ["a", "e", "i", "o", "u"]
   name = name.split('')
   name_new = name.map do |letter|
     if vowel.include?(letter)
       vowel.rotate(1)[vowel.index(letter)]
     else
       letter
     end
   end
   name_new.join
 end
 c = next_vowel(b)

 p c

 #Change all consonants to the next consonant by finding their index and advancing to the next index by rotating the array of consonants.

def next_consonant(name)
   consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
   name = name.split('')
   name_new = name.map do |letter|
     if consonant.include?(letter)
       consonant.rotate(1)[consonant.index(letter)]
     else
       letter
     end
   end
   name_new.join
 end
 d = next_consonant(c)

 p d

 puts "#{d} is actually Felicia Torres"


 
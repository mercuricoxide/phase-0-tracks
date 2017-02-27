# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
a = "iNvEsTiGaTiOn"
p a.swapcase


# "zom".<???>
# => “zoom”
a = "zom"
p a.insert(1, "o")


# "enhance".<???>
# => "    enhance    "
a = "enhance"
p a.center(a.length + 4)


# "Stop! You’re under arrest!".<???>
# "STOP! YOU’RE UNDER ARREST!"
a = "Stop! You’re under arrest!"
p a.upcase


# "the usual".<???>
#=> "the usual suspects"
a = "the usual"
p a.insert(-1, " suspects")


# " suspects".<???>
# => "the usual suspects"
a = " suspects"
p a.prepend("the usual")


# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
a = "The case of the disappearing last letter"
p a.chomp("r")
# or p a[0..-2]


# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
a = "The mystery of the missing first letter"
p a.sub("T", " ")
# or p a.slice(0), need to use bang operator then return original string again.
# or p a[1..-1]


# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
a = "Elementary,    my   dear        Watson!"
p a.split.join(" ")
# or p a.squeeze(" ")


# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
a = "z"
p a.ord
#122 is the ASCII value of "z"


# "How many times does the letter 'a' appear in this string?".<???>
# => 4
a = "How many times does the letter 'a' appear in this string?"
p a.count("a")




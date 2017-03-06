# module Shout

#     def self.yell_angrily(words)
#       words + "!!!" + " :("
#     end

#     def self.yellling_happily(words)
#       words + "!" + " :D"
#     end

# end

# p Shout.yell_angrily("shit")

module Shout
  def yell(words, mood)
    puts words + "!!" + mood
  end
end

class Happy
  include Shout
end

class Angry
  include Shout
end

happy = Happy.new
happy.yell("Yay", " :D")

angry = Angry.new
angry.yell("Nooooo", " :(")
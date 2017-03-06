class WordGuessingGame
  attr_reader :correct_guess
  attr_accessor :user_guess

  def initialize 
    @correct_guess = "poop"
    @guess_count = 0
    @user_guess = ["morning", "poop", "zebra", "corn", "feet", "sky"]
  end

  def feedback
    display_string = ""
      @correct_guess.chars.each do |char|
        if @user_guess.sample.chars.include?(char)
          display_string << char
        else 
         display_string << "_"
        end
      end
    display_string
  end

  def check_word
    @user_guess.sample
      while @guess_count < @correct_guess.length && @user_guess.sample != @correct_guess
        puts "WRONGGGGG! Try again!"
        puts feedback
        @guess_count += 1
      end
    puts "You won! You now get the actual word: #{@correct_guess}!!!"
  end   

end

#User Interface
def user_interface
  puts "Welcome to the Word Guessing Game!"
  game = WordGuessingGame.new
  puts "Try to guess the word!"
  puts game.check_word
end

puts user_interface





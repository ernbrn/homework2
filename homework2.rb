# this program will crush the user's dreams
class Game
  def user_input(num)
    print "Hey dummy, pick a number. You get #{num} guesses. -> "
    @guess = gets.chomp.to_f
  end

  def generate_number
    @number = (1..100.0).to_a
    @rando_num = @number.sample
  end

  def compare_nums
    if @guess > @rando_num
      print "Your guess is too high, and I'm not suprised.\n\n"
  elsif @guess < @rando_num
      print "Your guess is too low, just like your IQ. \n\n"
  elsif @guess == @rando_num
      @win = true
      print "Ok, you got it this time. It was a lucky guess. \n"
    end
  end

  def play_game
    @win = false
    generate_number

    counter = 5
    while counter > 0 && @win != true
      user_input(counter)
      compare_nums
      counter -= 1
    end

    print "Game Over! You are not a Wizard.\n
    The number was #{@rando_num}\n" if @win == false
  end
end

Erin = Game.new
Erin.play_game

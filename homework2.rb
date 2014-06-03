# this program will crush the user's dreams
class Game
  @win = false

  def user_input
    print 'Hey dummy, pick a number. You get 5 guesses. -> '
    @guess = gets.chomp.to_f
  end

  def generate_number
    @number = (1..100.0).to_a
    @rando_num = @number.sample
  end

  def compare_nums
    if @guess != @rando_num
      print "Hahaha, I knew you were dumb. The number is #{@rando_num}\n\n"
  else
    puts 'Dang, you got it right this time. Lucky guess.'
    @win = true
    end
  end

  def play_game
    counter = 5
    while counter > 0 && @win != true
      user_input
      generate_number
      compare_nums
      counter -= 1
    end

    print "Game Over! You are not a Wizard.\n\n" if @win != true
  end
end

Erin = Game.new
Erin.play_game

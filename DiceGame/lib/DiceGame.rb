module DiceGame
  require_relative 'DiceGame\Dice'
  require_relative 'DiceGame\User'
  require_relative 'DiceGame\Validations'
  require_relative 'DiceGame\Game'
  require_relative 'DiceGame\Turn'

  def self.create *players
    $players = *players
    Game.new players
  end
# puts @players
end
player1 = User.new name: "Вася", user_credits: 350
player2 = User.new name: "Петя", user_credits: 345
player3 = User.new name: "Вова", user_credits: 390
game = DiceGame.create player1, player2, player3
puts game
5.times do
  player1.bet score: rand(12) + 1, credits: rand(50)
  player2.bet score: rand(12) + 1, credits: rand(50)
  player3.bet score: rand(12) + 1, credits: rand(50)
  game.turn
  # sleep 1
end
game.finish
# puts game
# puts player1
# puts game

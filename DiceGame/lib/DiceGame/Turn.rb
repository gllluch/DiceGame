module DiceGame
require_relative 'Dice'
require_relative 'User'
require_relative 'Validations'
require_relative 'Game'

class Turn
  include Dice
  def initialize edges, cubes
    @edges = edges
    @cubes = cubes
  end

  def resolve
    $players.each { |player| return "Игрок #{player.name} не сделал ставку" unless player.credits}
    @result = dice edges: @edges, cubes: @cubes
    puts "Выпало число #{@result}"
    $players.each do |player|
      if player.score == @result
        player.win
      else
        player.lose
      end
    end
  end
end
end

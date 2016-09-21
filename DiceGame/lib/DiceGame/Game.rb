module DiceGame
require_relative 'Turn'
require_relative 'Dice'
require_relative 'User'
require_relative 'Validations'
  class Game
  # attr_reader :edges, :cubes
  # @edges = 6
  # @cubes = 2
    # CUBES = 2
    # EDGES = 6

    include Validator
    def initialize *players
      # @players = *players[0]
      @number_of_players = $players.size
      # players.each { |player|
      #                         @players.push(player)
      #                         @number_of_players += 1
      #               }
    end
    def to_s
      "В игре: #{@number_of_players} человека\n#{$players.join("\n")}\nКубиков: #{CUBES}\nГраней у кубиков: #{EDGES}\n"
    #  puts @players[0]
    end
          # puts player

    def turn
      Turn.new(EDGES, CUBES).resolve
    end


    #   @players.each { |player| return "Игрок #{player.name} не сделал ставку" unless player.credits}
    #   @result = dice edges: @edges, cubes: @cubes
    #   puts "Выпало число #{@result}"
    #   @players.each do |player|
    #     if player.score == @result
    #       player.win
    #     else
    #       player.lose
    #     end
    #   end
    # end
    def finish
        $players.each { |player| puts "Игрок #{player.name} выиграл #{player.user_credits - player.inital_credits}"}
    end
  end
end

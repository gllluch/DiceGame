  module Dice
      def dice edges:, cubes:
      @edges = edges || 6
      @cubes = cubes || 2
      result = 0
      @cubes.times { |_|  result += rand(@edges) + 1;}
      # p rand(7), rand(7)
      result
    end
  end

# puts DiceGame::Dice.new(edges:6, cubes:2).dice
# puts dice edges:6, cubes:2
# p self.dice

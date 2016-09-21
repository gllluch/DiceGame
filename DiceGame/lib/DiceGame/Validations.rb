  module Validator
    CUBES = 2
    EDGES = 6
    @error = ""
    def valid_score? score
      score <= (CUBES * EDGES)
    end

    def win? dice, score
      dice == score
    end

    def valid_bet? bet
      bet <= @user_credits
    end

    def all_bet?

    end
  end

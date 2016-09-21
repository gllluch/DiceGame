require_relative 'Validations'
class User
    include Validator
    attr_accessor :user_credits, :score, :credits
    attr_reader :name, :inital_credits
    REWARD = 0.25
    @score = @credits = nil
    def initialize name:, user_credits:
      # p user_credits, name
      @inital_credits = @user_credits = user_credits || 500
      @name = name
      @score = nil
      @bet = nil
    end
    def to_s
      "Name: #{@name} credits: #{@user_credits}"
    end
    def bet score:, credits:
      if (valid_bet? credits) && (valid_score? score)
        @score = score
        @credits = credits
        @user_credits -= @credits
        puts "Игрок #{@name} делал ставку в #{@credits} кредитов на число #{@score}. осталось денег #{@user_credits}"
      else puts "Неправильная ставка"
      end
    def bet?
       @bet != nil
    end

    def reset
      @score = nil
      @credits = nil
    end

    def win
      puts "#{@name} выиграл #{@credits * REWARD}"
      @user_credits += @credits * REWARD
      reset
    end

    def lose
      puts "#{@name} проиграл"
      reset
    end
  end
end

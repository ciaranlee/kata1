class TennisGame
  attr_accessor :score

	def initialize(player1, player2)
		@score = {}
		@score[player1] = 0
		@score[player2] = 0
		@player_one = player1
		@player_two = player2
	end

  def score_point(player)
    score[player] += 1
  end

  def winner
    if score[@player_one] >= 3 && score[@player_two] >= 3
    	difference = score[@player_one] - score[@player_two]
    	if(difference >=2 )
    		return @player_one
    	elsif difference <= -2
    		return @player_two
    	end
    		
      return nil
    end

    if(score[@player_one] == 4)
      return @player_one
    elsif(score[@player_two] == 4)
      return @player_two
    end
  end
end

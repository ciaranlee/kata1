class TennisGame
  attr_accessor :score

	def initialize(player1, player2)
		@score = {}
		@score[player1] = 0
		@score[player2] = 0
	end

  def score_point(player)
    score[player] += 1
  end
end

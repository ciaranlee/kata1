require_relative "../tennis_game"
describe "something" do
  it "creates a match" do
    TennisGame.new(:player_1, :player_2).score.should == {:player_1 => 0, :player_2 => 0} 
  end

  it "score" do
    tennis_game = TennisGame.new(:player_1, :player_2)
    tennis_game.score_point(:player_1)
    tennis_game.score.should == {:player_1 => 1, :player_2 => 0} 
  end
end

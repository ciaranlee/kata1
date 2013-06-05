require_relative "../tennis_game"
describe "something" do
  before :each do
    @tennis_game = TennisGame.new(:player_1, :player_2)
  end

  it "creates a match" do
    @tennis_game.score.should == {:player_1 => 0, :player_2 => 0} 
  end

  it "score" do
    @tennis_game.score_point(:player_1)
    @tennis_game.score.should == {:player_1 => 1, :player_2 => 0} 
  end

  it "knows if someone wins in a simple scenario" do
    4.times { @tennis_game.score_point(:player_1) }
    @tennis_game.winner.should == :player_1
  end

  it "no winner if both on 40" do
    3.times { @tennis_game.score_point(:player_1) }
    4.times { @tennis_game.score_point(:player_2) }
    @tennis_game.winner.should == nil
  end

  it "someone wins if they get more than 2 points ahead" do
    3.times { @tennis_game.score_point(:player_1) }
    5.times { @tennis_game.score_point(:player_2) }
    @tennis_game.winner.should == :player_2
  end

  it "noone wins if they get 1 points ahead only" do
    3.times { @tennis_game.score_point(:player_1) }
    4.times { @tennis_game.score_point(:player_2) }
    @tennis_game.score_point(:player_1)
    @tennis_game.score_point(:player_1)
    @tennis_game.score_point(:player_2)
    @tennis_game.score_point(:player_1)
    @tennis_game.score_point(:player_2)
    @tennis_game.winner.should == nil
  end
end

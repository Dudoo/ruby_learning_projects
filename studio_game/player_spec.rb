require_relative 'player'

describe Player do
  
  before do
    $stdout = StringIO.new
    @initial_health = 60
    @player = Player.new("larry", @initial_health)
  end
  
  it "has a capitalized name" do
    expect(@player.name).to eq("Larry")
  end
  
  it "has an initial health" do
    @player.health.should == 60
  end
  
  it "has a string representation" do
    @player.to_s.should == "I'm Larry with a health of 60 and a score of 65."
  end
  
  it "computes the score as the sum of its health and length of name" do
    @player.score.should == 65
  end
  
  it "increases health by 15 when w00ted" do
    @player.w00t
    @player.health.should == @initial_health + 15
  end
  
  it "decreases health by 10 when blammed" do
    @player.blam
    @player.health.should == @initial_health - 10
  end
  
end
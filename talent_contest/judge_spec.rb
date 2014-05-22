require_relative 'judge'
require_relative 'performance'

describe Judge do
  before do
    @judge = Judge.new("blake")
  end
  
  it "has a capitalized name" do
    @judge.name.should == "Blake"
  end
  
  it "has a string representation" do
    @judge.to_s.should == "Blake!"
  end
  
  it "can comment on a performance" do
    @judge.comment_on_performance("test").should == "Blake says: test"
  end
end

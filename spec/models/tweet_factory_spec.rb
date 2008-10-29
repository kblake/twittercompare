require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TweetFactory do
  before(:each) do 
    @tweeter = TweetFactory.new("twitt3rcompare", "compare1")
  end

  it "should return a list of mutual followers between twitt3rcompare and sandrot" do 
    mutual_friends = @tweeter.compare('twitt3rcompare', 'sandrot')
    mutual_friends.size.should == 1
  end

  it "should return a list of followers for me" do 
    @tweeter.followers_for('sandrot').size.should == 69
  end

  it "should authenticate for twitt3rcompare" do
    @tweeter.authenticated?.should be_true
  end
end

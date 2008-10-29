require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TweetcomparerController do

  it "should set results" do
    post :compare, :compare => {:me => 'cgrusden', :friend => 'l4rk'}
    assigns(:results).should_not be_nil
  end

end

class TweetcomparerController < ApplicationController
  def compare
    @me = params["me"]
    @friend = params["friend"]
    @tweet_factory = TweetFactory.new("<twitter_username>", "<twitter_password>")
    @results = @tweet_factory.compare(@me, @friend)
  end
end

require 'httparty'

class TweetFactory 
  include HTTParty
  base_uri 'twitter.com'

  def initialize(user, pass)
    @auth = {:username => user, :password => pass}
    @options = {:basic_auth => @auth}
  end

  def compare(me, friend)
    followers_for(me) & followers_for(friend)
  end

  def followers_for(user)
    get("/statuses/followers/#{user}.json").collect {|follower| [follower["screen_name"], follower["name"], follower["profile_image_url"], follower["id"]]}
  end

  def authenticated?
    get('/account/verify_credentials.json')["authorized"]
  end

  protected

  def get(uri)
    self.class.get(uri, @options)
  end
  
end

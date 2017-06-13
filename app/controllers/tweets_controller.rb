class TweetsController < ApplicationController

  def index
    $client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
    @trump_tweets = $client.search("from:realDonaldTrump", result_type: "recent").take(5)
    render "index"
  end

  def tweet_search
  	@twitter_handle = params[:twitter_handle]
  	@tweets = $client.search("from:#{@twitter_handle}", result_type: "recent").take(25)

  	if @tweets.present?
  		render "tweet_search"
  	else
  		redirect_to '/tweets'
  	end
  end

end

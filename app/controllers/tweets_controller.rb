class TweetsController < ApplicationController

  def index
  	@trump_tweets = $client.search("from:realDonaldTrump", result_type: "recent").take(5)
    render "index"
  end

  def tweet_search
  	@twitter_handle = params[:twitter_handle]
  	@tweets = $client.search("from:#{@twitter_handle}", result_type: "recent").take(25)
  	p @twitter_handle
  	redirect_to "/tweets/#{@twitter_handle}"
  	if !@tweets.present?
  		redirect_to '/tweets'
  	end
  end

end

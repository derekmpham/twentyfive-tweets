class TweetsController < ApplicationController

  def index
    @trump_tweets = $client.search("from:realDonaldTrump", result_type: "recent").take(5)
    render "index"
  end

  def tweets_search
  	@twitter_handle = params[:text_response]
  	@tweets = $client.search("from:#{@twitter_handle}", result_type: "recent").take(25)

  	if @tweets.present?
      render "tweets_search"
  	else
  		redirect_to '/tweets'
  	end
  end

end

class TweetsController < ApplicationController

  def retrieve
  end

  def index
  	@twitter_handle = params[:twitter_handle]
  	@tweets = $client.search("from:#{@twitter_handle}", result_type: "recent").take(25)
  end

end
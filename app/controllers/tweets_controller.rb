class TweetsController < ApplicationController

  def index
  	@twitter_handle = params[:twitter_handle]
  	@tweets = $client.search("from:#{@twitter_handle}", result_type: "recent").take(25)
  	if !@tweets.present?
  		redirect_to '/'
  	end
  end

end
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
    # @tweets = $client.search(params[:search], result_type: "recent").take(10)
    @biebers = $client.search("from:justinbieber", result_type: "recent").take(25)
    render "index"
  end

  def tweets
  	@twitter_handle = params[:twitter_handle]
  	@tweets = $client.search("from:#{@twitter_handle}", result_type: "recent").take(25)
  end

  def authorize
    redirect_to '/login' unless current_user
  end
end

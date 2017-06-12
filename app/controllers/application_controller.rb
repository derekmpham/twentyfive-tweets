class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
    redirect_to '/tweets'
  end

  # def index
  #   @trump_tweets = $client.search("from:realDonaldTrump", result_type: "recent").take(5)
  #   render "index"
  # end

  def authorize
    redirect_to '/login' unless current_user
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
    $client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
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

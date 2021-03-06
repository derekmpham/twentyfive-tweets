class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
    redirect_to '/tweets'
  end

  def authorize
    redirect_to '/login' unless current_user
  end
end

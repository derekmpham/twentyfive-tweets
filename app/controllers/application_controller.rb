class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
    render "index"
  end

  def authorize
    redirect_to '/login' unless current_user
  end
end

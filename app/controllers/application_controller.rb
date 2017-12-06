class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authorized

  helper_method :logged_in


  def homepage
    @user = User.new
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    if logged_in?
    else
      redirect_to homepage_path
    end
  end


end

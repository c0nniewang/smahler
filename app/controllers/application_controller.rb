class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :authorized
  skip_before_action :authorized, only: [:homepage]

  helper_method :logged_in?


  def homepage
    if logged_in?
      redirect_to user_path(session[:user_id])
    else
      @user = User.new
    end
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

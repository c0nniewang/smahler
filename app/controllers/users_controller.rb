class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def create
   @user = User.new(user_params)
   if @user.valid?
     @user.save
     session[:user_id] = @user.id
     redirect_to jam_sessions_path
   else
     render 'new'
   end
  end

  def show
    @user = User.find(params[:id])
  end


private

  def user_params
    params.require(:user).permit(:username, :password, :email, :name)
  end

end

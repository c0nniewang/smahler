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
    @user = User.find(session[:user_id])
    inst = Instrument.all + @user.instruments
    @instruments = inst.uniq
  end

  def update_inst
    @user = User.find(session[:user_id])
    @inst = Instrument.find_by(name: params[:name])
    @instruments = Instrument.all.reject{|i| @user.instruments.include?(i)}

    if @user.instruments.include?(@inst)
      render user_path(@user)
    else
      @user.instruments << @inst
      render 'show'
    end
  end

  def delete_inst
    @user = User.find(session[:user_id])
    @inst = Instrument.find_by(name: params[:name])
    @user.instruments.where(id: @inst.id).destroy_all
    @instruments = Instrument.all.reject{|i| @user.instruments.include?(i)}
    render 'show'
  end


private

  def user_params
    params.require(:user).permit(:username, :password, :email, :name)
  end

end

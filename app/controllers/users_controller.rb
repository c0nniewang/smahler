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
    @instruments = @user.non_user_instruments
  end

  def update_inst
    @user = User.find(session[:user_id])
    @inst = Instrument.find_by(name: params[:name])

    if @user.instruments.include?(@inst)
      @instruments = @user.non_user_instruments
      render 'show'
    else
      @user.instruments << @inst
      @instruments = @user.non_user_instruments
      render 'show'
    end
  end

  def delete_inst
    @user = User.find(session[:user_id])
    @inst = Instrument.find_by(name: params[:name])
    MusicianInstrument.where(musician_id: @user.id, instrument_id: @inst.id).destroy_all
    @instruments = @user.non_user_instruments
    render 'show'
  end




private

  def user_params
    params.require(:user).permit(:username, :password, :email, :name)
  end

end

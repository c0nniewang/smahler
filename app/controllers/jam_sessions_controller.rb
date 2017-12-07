class JamSessionsController < ApplicationController
  def index
    if params[:search_city]
      @jamsessions = JamSession.search_city(params[:search_city])
    elsif params[:search_genre]
      @jamsessions = JamSession.search_genre(params[:search_genre])
    else
      @jamsessions = JamSession.all
    end
  end

  def show
    @jamsession = JamSession.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def new
    @jamsession = JamSession.new
    @instruments = Instrument.all
  end

  def create
    @jamsession = JamSession.new(jamsession_params)
    @jamsession.host = User.find(session[:user_id])

    if @jamsession.valid?
      instrument_ids = params[:instrument][:instrument_ids].each{|i| i.to_i}
      instruments = instrument_ids.map{|id| Instrument.find(id)}
      @jamsession.instruments << instruments
      @jamsession.save
      redirect_to jam_session_path(@jamsession)
    else
      render 'new'
    end
  end

  def edit
    @jamsession = JamSession.find(params[:id])
  end

  def updatejam
    @jamsession = JamSession.find(params[:id])
    @user = User.find(session[:user_id])

    if params[:name]
      @instrument = Instrument.find_by(name: params[:name])
      @jamsession.musicians << User.find(session[:user_id])
      render 'show'
    else
      @jamsession.update(jamsession_params)

      if @jamsession.valid?
        redirect_to jam_session_path(@jamsession)
      else
        render :edit
      end
    end
  end


  def delete_jams
    @user = User.find(session[:user_id])
    @js = JamSession.find_by(title: params[:title])

    @instruments = Instrument.all.reject{|i| @user.instruments.include?(i)}

    MusicianJam.where(musician_id: @user.id, jam_session_id: @js.id).destroy_all
    render user_path(@user)
  end

  def delete_inst
    @user = User.find(session[:user_id])
    @inst = Instrument.find_by(name: params[:name])
    @instruments = Instrument.all.reject{|i| @user.instruments.include?(i)}
    render user_path(@user)
  end

  private

  def jamsession_params
    params.require(:jam_session).permit(:title, :datetime, :description, :city_id, :genre_id)
  end

end

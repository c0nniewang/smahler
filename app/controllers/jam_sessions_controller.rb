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
    @jamsession = JamSession.create(jamsession_params)
    @instruments = params[:instruments]
    # CREATE INSTRUMENT JAMS

    redirect_to jam_session_path(@jamsession)
  end


  private

  def jamsession_params
    params.require(:jam_session).permit(:title, :datetime, :description, :city_id, :genre_id, :host_id)
  end

end

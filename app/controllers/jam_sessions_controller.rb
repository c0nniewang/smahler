class JamSessionsController < ApplicationController
  def index
    @jamsessions = JamSession.all
  end

  def show
    @jamsession = JamSession.find(params[:id])
  end

  def new
    @jamsession = JamSession.new
    @instruments = Instrument.all
  end

  def create
    byebug
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
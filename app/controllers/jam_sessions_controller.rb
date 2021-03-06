class JamSessionsController < ApplicationController
  def index
    if params[:search_city]
      @jamsessions = JamSession.search_city(params[:search_city])
    elsif params[:search_genre]
      @jamsessions = JamSession.search_genre(params[:search_genre])
    elsif params[:search_instrument]
      @jamsessions = JamSession.search_instrument(params[:search_instrument])
    else
      @jamsessions = JamSession.all
    end
  end

  def show
    @comment = Comment.new
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

  def update
    @jamsession = JamSession.find(params[:id])

    @jamsession.update(jamsession_params)


    if @jamsession.update(jamsession_params)
      instrument_ids = params[:instrument][:instrument_ids].each{|i| i.to_i}
      instruments = instrument_ids.map{|id| Instrument.find(id)}
      @jamsession.instruments << instruments
      @jamsession.save

      redirect_to jam_session_path(@jamsession)

    else
      render :edit
    end
  end

  def add_comment
    @user = User.find(session[:user_id])
    @jamsession = JamSession.find(params[:id])
    @comment = Comment.create(content: params[:comments], user_id: @user.id, jam_session_id: @jamsession.id)
    @jamsession.comments << @comment

    render 'show'
  end

  def updatejam
    @jamsession = JamSession.find(params[:id])
    @user = User.find(session[:user_id])

    if params[:name]
      @instrument = Instrument.find_by(name: params[:name])
      if @user.instruments.include?(@instrument)
        @jamsession.musicians << User.find(session[:user_id])
        render 'show'
      else
        flash[:message] = "#{@user.name} you are not registered to play this instrument!"
        render 'show'
      end
    end
  end



  def delete_jams
    @user = User.find(session[:user_id])
    @js = JamSession.find_by(id: params[:id])

    @instruments = Instrument.all.reject{|i| @user.instruments.include?(i)}

    MusicianJam.where(musician_id: @user.id, jam_session_id: @js.id).destroy_all
    redirect_to user_path(@user)
  end



  private

  def jamsession_params
    params.require(:jam_session).permit(:title, :datetime, :description, :city_id, :genre_id)
  end

  def comments_params
    params.require(:comments).permit(:content)
  end
end

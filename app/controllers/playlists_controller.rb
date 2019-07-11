class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def show
    find_playlist
    @playsongs = @playlist.playsongs

    @song = Song.new
    # Song.play_song(title, artist)
  end

  def new
    @playlist = Playlist.new
  end

  def create
    # Playlist instances must be created with a user_id
    @playlist = Playlist.create(playlist_params)

    if @playlist.valid?
      @user = User.find(session[:user_id])
      @user.playlists << @playlist
      redirect_to playlist_path(@playlist)
    else
      flash[:errors] = @playlist.errors.full_messages
      redirect_to new_playlist_path
    end
  end

  def edit
    find_playlist
  end

  def update
    find_playlist
    @playlist.update(playlist_params)

    if @playlist.update(playlist_params)
      redirect_to playlist_path(@playlist)
    else
      flash[:errors] = @playlist.errors.full_messages
      redirect_to edit_playlist_path(@playlist)
    end
  end

  def destroy
    find_playlist
    @playlist.destroy
    redirect_to playlists_path
  end

  private

  def find_playlist
    @playlist = Playlist.find(params[:id])
  end

  def playlist_params
    params.require(:playlist).permit(:name, :user_id)
  end
end

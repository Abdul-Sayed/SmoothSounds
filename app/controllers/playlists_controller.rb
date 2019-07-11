class PlaylistsController < ApplicationController
  
  def index
    @playlists = Playlist.all
  end

  def show
    find_playlist
    @playsongs = @playlist.playsongs
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.create(playlist_params)
    @user = User.find(session[:user_id])
    @user.playlists << @playlist
    redirect_to playlist_path(@playlist)
  end 

  def edit
    find_playlist
  end 

  def update
    find_playlist
    @playlist.update(playlist_params)
    redirect_to playlist_path(@playlist)
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
    params.require(:playlist).permit(:name)
  end 
end

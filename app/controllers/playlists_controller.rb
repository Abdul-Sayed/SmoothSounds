class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def show
    find_playlist
    @playsongs = @playlist.playsongs
  end

  def new
  end

  def edit
  end

  private

  def find_playlist
    @playlist = Playlist.find(params[:id])
  end
end

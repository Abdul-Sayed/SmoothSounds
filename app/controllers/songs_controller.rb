

class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    @playlist = Playlist.find(params[:song][:playlist_id])

    @playsong = Playsong.create(playlist_id: @playlist.id, song_id: @song.id)
    # redirect_to song_path(@song)
    redirect_to playlist_path(@playlist)
  end

  def show
    find_song
    # @playlist = Playlist.all
  end

  def edit
    find_song
  end

  def update
    find_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def destroy
    find_song
    @song.destroy
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :album, :genre)
  end
end

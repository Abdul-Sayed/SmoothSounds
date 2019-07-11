require "net/http"
require "open-uri"

require "json"

class Song < ApplicationRecord
  has_many :playsongs

  def self.get_api_data(title, artist)
    @song_name = title.split(" ").join("_")
    @song_artist = artist.split(" ").join("_")
    url = "https://api.deezer.com/search?q=#{@song_artist}/#{@song_name}"
    uri = URI.parse(url)
    music_data = Net::HTTP.get_response(uri)
    @hash = JSON.parse(music_data.body)
  end

  def self.play_song(title, artist)
    self.get_api_data(title, artist)
    return @song_preview = @hash["data"][0]["preview"]
  end

  def self.artist_picture(title, artist)
    self.get_api_data(title, artist)
    return @artist_picture = @hash["data"][0]["artist"]["picture_big"]
  end
end

# @correct_title = @hash["data"][0]["title"]
# @correct_artist_name = @hash["data"][0]["artist"]["name"]
# @artist_picture = @hash["data"][0]["artist"]["picture_big"]
# @album_name = @hash["data"][0]["album"]["title"]
# @album_art = @hash["data"][0]["album"]["cover_big"]

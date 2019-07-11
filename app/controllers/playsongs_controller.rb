class PlaysongsController < ApplicationController
  def new
    @playsong = Playsong.new
  end
end

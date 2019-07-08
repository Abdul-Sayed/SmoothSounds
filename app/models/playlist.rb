class Playlist < ApplicationRecord
  belongs_to :user
  has_many :playsongs
  has_many :songs, through: :playsongs
end

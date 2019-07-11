class Playlist < ApplicationRecord
  belongs_to :user
  has_many :playsongs
  has_many :songs, through: :playsongs

  validates :name, presence: true
end

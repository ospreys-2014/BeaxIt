class Track < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist
  has_many :tracklists
  has_many :playlists, through: :tracklists
end

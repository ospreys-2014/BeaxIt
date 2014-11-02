class Tracklist < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :track
  belongs_to :playlist
end

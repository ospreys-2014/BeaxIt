class Track < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist
  belongs_to :playlist

  def correct_link
    self.link.sub(/\/Users\/xiranou/, 'http://localhost:9393')
  end
end

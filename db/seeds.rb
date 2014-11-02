require 'mp3info'

dir = Dir["public/tracks/**/*.mp3"]
dir.each do |track|
  Mp3Info.open(track) do |info|
    p info.tag.title
  end
end

# Track.all.each do |track|
#   track.update(link: "tracks/#{track.title}")
#   track.save
# end

# Track.all.each do |track|
#   track.artist = Artist.first
#   track.save
# end

# Track.all.each do |track|
#   track.album = Album.first
#   track.save
# end

# Track.all.each do |track|
#   track.playlist = Playlist.first
#   track.save
# end

# Playlist.all.each do |playlist|
#   playlist.user = User.first
#   playlist.save
# end
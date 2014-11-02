dir = Dir["public/tracks/**/*.mp3"]
dir.each do |track|
  Mp3Info.open(track) do |info|
    track = Track.new(title: info.tag.title)
    artist = Artist.find_or_create_by(name: info.tag.name)
    album = Album.find_or_create_by(title: info.tag.album)
    track.artist, track.album = artist, album
    album.artist = artist
    track.save
    album.save
  end
end

# require 'itunes-search-api'
# bloom = ITunesSearchAPI.search(term: 'Beatles', entity: 'song', :media => "music")
# bloom[10]
# bloom.each do |track|
#   Track.create(title: track['trackName'], link: track['previewUrl'])

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

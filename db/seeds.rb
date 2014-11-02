require 'itunes-search-api'
bloom = ITunesSearchAPI.search(term: 'Beatles', entity: 'song', :media => "music")
bloom[10]
bloom.each do |track|
  Track.create(title: track['trackName'], link: track['previewUrl'])

end

Track.all.each do |track|
  track.artist = Artist.first
  track.save
end

Track.all.each do |track|
  track.album = Album.first
  track.save
end

Track.all.each do |track|
  track.playlist = Playlist.first
  track.save
end

Playlist.all.each do |playlist|
  playlist.user = User.first
  playlist.save
end

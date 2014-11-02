# dir = Dir["public/tracks/**/*.mp3"]
# dir.each do |track|
#   Mp3Info.open(track) do |info|
#     track = Track.find_or_create_by(title: info.tag.title)
#     artist = Artist.find_or_create_by(name: info.tag.artist)
#     album = Album.find_or_create_by(title: info.tag.album)
#     track.artist, track.album = artist, album
#     album.artist = artist
#     track.save
#     album.save
#   end
# end
# beatles = ITunesSearchAPI.search(term: "#{params[:artist]}", entity: 'song', :media => "music")
# beatles.each do |info|
#   track = Track.create(title: info['trackName'], link: info['previewUrl'])
#   album = Album.find_or_create_by(title: info['collectionName'])
#   artist = Artist.find_or_create_by(name: info['artistName'])
#   track.artist, track.album = artist, album
#   artist.albums << album
#   album.tracks << track
#   track.save
#   album.save
#   artist.save
# end

# calvinharris = ITunesSearchAPI.search(term: 'Calvin harris', entity: 'song', :media => "music")
# calvinharris.each do |info|
#   track = Track.create(title: info['trackName'], link: info['previewUrl'])
#   album = Album.find_or_create_by(title: info['collectionName'])
#   artist = Artist.find_or_create_by(name: info['artistName'])
#   track.artist, track.album = artist, album
#   artist.albums << album
#   album.tracks << track
#   track.save
#   album.save
#   artist.save
# end

# flume = ITunesSearchAPI.search(term: 'Flume', entity: 'song', :media => "music")
# flume.each do |info|
#   track = Track.create(title: info['trackName'], link: info['previewUrl'])
#   album = Album.find_or_create_by(title: info['collectionName'])
#   artist = Artist.find_or_create_by(name: info['artistName'])
#   track.artist, track.album = artist, album
#   artist.albums << album
#   album.tracks << track
#   track.save
#   album.save
#   artist.save
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

get '/searchapi' do
	erb :searchapi
end

post '/searchapi' do
itunes_library = ITunesSearchAPI.search(term: "#{params[:artist]}", entity: 'song', :media => "music")
	itunes_library.each do |info|
	  track = Track.find_or_create_by(title: info['trackName'], link: info['previewUrl'])
	  album = Album.find_or_create_by(title: info['collectionName'])
	  artist = Artist.find_or_create_by(name: info['artistName'])
	  track.artist, track.album = artist, album
	  artist.albums << album
	  album.tracks << track
	  track.save
	  album.save
	  artist.save
	end
	redirect'/'
end
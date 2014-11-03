def search_by_artist(artist)
  itunes_query = ITunesSearchAPI.search(term: "#{artist}", entity: 'song', :media => "music")
  if itunes_query.empty?
    session[:no_artist_found] = "NO ARTIST FOUND!"
  else
    artist = Artist.find_or_create_by(name: "#{artist}")
    itunes_query.each do |info|
      track = Track.find_or_create_by(title: info['trackName'], link: info['previewUrl'])
      album = Album.find_or_create_by(title: info['collectionName'])
      track.artist, track.album = artist, album
      artist.albums << album
      album.tracks << track
      track.save
      album.save
      artist.save
    end
  end
end
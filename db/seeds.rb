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

Track.all.each do |track|
  track.update(link: "tracks/#{track.title}")
  track.save
end
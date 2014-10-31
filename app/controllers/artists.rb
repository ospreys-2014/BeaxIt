get '/artist/:id' do |id|
  artist = Artist.find(id)

  erb :'/artist/single', locals: {artist: artist}
end


get '/artists' do
  artists = Artist.all

  erb :'/artist/all', locals: {artists: artists}
end

# get '/album/:id' do |id|
#   album = Album.find(id)

#   erb :'/album/single', locals: {album: album}
# end



get '/albums/:id' do |id|
  albums = Artist.find(id).albums

  erb :'/album/artist_albums', locals: {albums: albums}
end

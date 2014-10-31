get '/album/:id' do |id|
  album = Album.find(id)

  erb :'/album/single', locals: {album: album}
end


get '/albums' do
  albums = Album.all

  erb :'/album/all', locals: {albums: albums}
end

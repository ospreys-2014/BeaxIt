get '/playlist/:id' do |id|
  playlist = Playlist.find(id)

  erb :'playlist/list_tracks', locals: {playlist: playlist}
end



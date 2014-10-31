get '/playlist/:id' do |id|
  playlist = Playlist.find(id)

  erb :'playlist/list_tracks', locals: {playlist: playlist}
end

get '/add_song' do
  erb :'/playlist/add_song'
end

put '/add_song' do
  Playlist.find_by(name = :playlist).tracks << Track.create(params[:song])

  redirect '/playlist/1'
end

get '/playlists' do
  @playlists = Playlist.all

  erb :"playlists/all", locals:{playlists: @playlists}
end


get '/playlist/:id' do |id|
  @playlist = Playlist.find(id)

  erb :'playlists/single', locals: {playlist: @playlist}
end

get '/add_song' do
  erb :'/playlists/add_song'
end

put '/add_song' do
  Playlist.find_by(name = :playlist).tracks << Track.create(params[:song])

  redirect '/playlists'
end

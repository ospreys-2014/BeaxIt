get '/playlists' do
  @playlists = Playlist.all

  erb :"playlists/all", locals:{playlists: @playlists}
end


get '/playlist/:id' do |id|
  @playlist = Playlist.find(id)

  erb :'playlists/single', locals: {playlist: @playlist}
end



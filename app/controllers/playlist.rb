get '/playlists' do
  @playlists = Playlist.all

  erb :"playlists/all", locals:{playlists: @playlists}
end

get '/add/playlist' do
  @tracks = Track.all

  erb :"playlists/add", locals:{tracks: @tracks}
end

post '/add_song' do
  Playlist.find_or_create_by(name: params[:name]).tracks << Track.find(params[:track])

  redirect '/playlists'
end

get '/playlist/:id' do |id|
  @playlist = Playlist.find(id)

  erb :'playlists/single', locals: {playlist: @playlist}
end




# put '/add_song' do
#   Playlist.find_by(name = :playlist).tracks << Track.create(params[:song])

#   redirect '/playlists'
# end

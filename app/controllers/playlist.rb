get '/playlists' do
  if session[:user_id]
    @playlists = Playlist.find_by(user_id: session[:user_id])
    erb :"playlists/all", locals:{playlists: @playlists}
  else
    redirect '/login'
  end
end

get '/add/playlist' do
  @tracks = Track.all

  erb :"playlists/add", locals:{tracks: @tracks}
end

post '/add_song' do
  playlist = Playlist.find_or_create_by(name: params[:name])
  playlist.tracks << Track.find(params[:track])
  playlist.user_id = session[:user_id]
  playlist.save

  redirect '/'
end

get '/playlist/:id' do |id|
  @playlist = Playlist.find(id)

  erb :'playlists/single', locals: {playlist: @playlist}
end




# put '/add_song' do
#   Playlist.find_by(name = :playlist).tracks << Track.create(params[:song])

#   redirect '/playlists'
# end

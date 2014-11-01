get '/' do
  if session[:user_id]
    @playlists = Playlist.where(user_id: session[:user_id])
    @user = User.find(session[:user_id])

    erb :welcome, locals:{playlists: @playlists, user: @user}
  else
    erb :welcome
  end
end


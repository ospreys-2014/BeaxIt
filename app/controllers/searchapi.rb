get '/searchapi' do
	erb :searchapi
end

post '/searchapi' do
	search_by_artist(params[:artist])
	if session[:no_artist_found]
		redirect "/"
	else
		redirect "/"
	end
end

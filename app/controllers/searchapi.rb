get '/searchapi' do
	erb :searchapi
end

post '/searchapi' do
	id = search_by_artist(params[:artist])
	if session[:no_artist_found]
		redirect "/"
	else
		redirect "/artist/#{id}"
	end
end

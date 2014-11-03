get '/searchapi' do
	erb :searchapi
end

post '/searchapi' do
	id = search_by_artist(params[:artist])

	redirect "/artist/#{id}"
end

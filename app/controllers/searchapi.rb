get '/searchapi' do
	erb :searchapi
end

post '/searchapi' do
	search_by_artist(params[:artist])

	redirect'/'
end

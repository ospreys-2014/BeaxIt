get '/artists' do
  @artists = Artist.all

  erb :"artists/all", locals:{artists: @artists}, layout: false
end

get '/artist/:id' do |id|
  @artist = Artist.find(id)

  erb :"artists/single", locals:{artist: @artist}
end

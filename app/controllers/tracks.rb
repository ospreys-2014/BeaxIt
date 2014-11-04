get '/tracks' do
  @tracks = Track.all

  erb :"tracks/all", locals:{tracks: @tracks}, layout: false
end

get '/track/:id' do |id|
  @track = Track.find(id)

  erb :"tracks/single", locals:{track: @track}
end

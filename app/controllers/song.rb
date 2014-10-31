get '/track/:id' do |id|
  track = Track.find(id)

  erb :'/track/single', locals: {track: track}
end


get '/tracks' do
  tracks = Track.all

  erb :'/track/all', locals: {tracks: tracks}
end

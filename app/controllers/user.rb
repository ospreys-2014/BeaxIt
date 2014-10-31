get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end

post '/signup' do
  user = User.create(params[:user])
  if user.save
    session[:user_id] = user.id
    session[:user_name] = user.username
    redirect '/'
  else
    session[:error] = user.errors.full_messages
    redirect '/signup'
  end
end

post '/login' do
  session[:user_id] = user.
  # if session[:user_id]
  #   user = User.find_by(params[:user])
  #   session[:user_id] = user.id
  #   session[:user_name] = user.username

  redirect '/'
end




require 'sinatra'

get '/josh' do
  "Hello World"
end

get '/secret' do
  "Shhh. I am a secret."
end

get '/kallithea' do
  "Score a goal!"
end

get '/random-dog' do
  @name = %w(Aubameyang Mkhitarayan Lacazette).sample
  erb(:index)
end

get '/named-dog' do
  p params
  @name = params[:name]
  @color = params[:color]
  erb(:index)
end

post '/named-dog' do
  p params
  @name = params[:name]
  @color = params[:color]
  erb(:index)
end

get '/form' do
  erb(:index2)
end

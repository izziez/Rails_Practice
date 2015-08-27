require 'sinatra'

get '/' do
  erb :index
end

get '/about' do
  "So ready for this weekend!"
end

require 'sinatra'
require 'sinatra/reloader' if development?
require 'tilt/erubis'

set :bind, '0.0.0.0'
set :port, 80

get '/' do
  names = params[:query] ? params[:query].split(/\W+/) : []
  @randomized = names.shuffle
  
  erb :index
end
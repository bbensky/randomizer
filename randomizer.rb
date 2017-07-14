require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

get '/' do
  names = params[:query] ? params[:query].split(/\W+/) : []
  @randomized = names.shuffle
  
  erb :index
end
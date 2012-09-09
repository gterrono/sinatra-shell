require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/content_for'
require_relative 'helpers.rb'
require_relative 'models'

#Put route handlers in here

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

not_found do
  erb 'This page does not exist'
end

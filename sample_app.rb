require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'helpers.rb'
require_relative 'models'

get '/' do
  erb :index, :locals => {:indent_home => true}
end

post '/' do
  link = Link.create(params)
  if link.saved?
    redirect "/link/#{link.keyword}"
  else
    @entered_data = params
    @error = link.errors.first[0]
    erb :index
  end
end

get '/links' do
  @links = Link.all
  erb :links, :locals => {:indent_links => true}
end

get '/about' do
  erb :about, :locals => {:indent_about => true}
end

get '/:keyword' do
  ensure_link_exists(params[:keyword]) do |link|
    link.update(:hits => link.hits + 1)
    redirect link.url
  end
end

get '/link/:keyword' do
  ensure_link_exists(params[:keyword]) do |link|
    erb :link, :locals => {:link => link, :host => request.host, :port => request.port}
  end
end

not_found do
  'this is not the page you were looking for...'
end

require 'sinatra'

# dont require server restart when editing page content
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

get '/historiek' do
  erb :historiek
end

get '/faq' do
  erb :faq
end

get '/meetthecrew' do
  erb :meetthecrew
end

get '/partners' do
  erb :partners
end

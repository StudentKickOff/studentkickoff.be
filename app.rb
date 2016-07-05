require 'sinatra'

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

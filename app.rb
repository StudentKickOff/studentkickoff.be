require 'sinatra'
require 'sinatra/namespace'

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

get '/partners' do
  erb :partners
end

namespace '/meetthecrew' do
  get { erb :meetthecrew }
  get('/raadvanbestuur/?') { erb :'teams/raadvanbestuur' }
  get('/teambeverages/?') { erb :'teams/teambeverages' }
  get('/teamhr/?') { erb :'teams/teamhr' }
  get('/teamit/?') { erb :'teams/teamit' }
  get('/teampartners/?') { erb :'teams/teampartners' }
  get('/teampr/?') { erb :'teams/teampr' }
  get('/teamproductie/?') { erb :'teams/teamproductie' }
  get('/teamsite/?') { erb :'teams/teamsite' }
end

require 'rubygems'
require 'sinatra/base'

class HinmanStatic < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/boatsales' do
    erb :boatsales
  end
  
  get '/hotels' do
    erb :hotels
  end
  
  get '/travel' do
    erb :travel
  end
  
  get '/venue' do
    erb :venue
  end
end
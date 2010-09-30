require 'rubygems'
require 'sinatra/base'
require 'sinatra/content_for'

class HinmanStatic < Sinatra::Base
  
  helpers Sinatra::ContentFor

  before do
    expires 600, :public
  end

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
  
  get '/schedule' do
    erb :schedule
  end
  
  get '/parking' do
    erb :parking
  end
  
  get '/meals' do
    erb :meals
  end
  
  get '/weather' do
    erb :weather
  end
  
end

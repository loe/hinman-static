require 'rubygems'
require 'sinatra/base'
require 'sinatra/content_for'

class HinmanStatic < Sinatra::Base

  helpers Sinatra::ContentFor

  configure :production do
    require 'newrelic_rpm'
  end

  before do
    expires 600, :public
  end

  get '/' do
    erb(:index)
  end

  get '/:page' do |page|
    erb(page.to_sym)
  end
end

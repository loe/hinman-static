require 'rubygems'
require 'sinatra/base'
require 'sinatra/content_for'

class HinmanStatic < Sinatra::Base
  
  helpers Sinatra::ContentFor

  before do
    expires 600, :public
  end

  get '/:page' do |page|
    erb page || :index
  end
end

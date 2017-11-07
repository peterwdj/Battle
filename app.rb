require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    "Hello"
  end
  run! if app_file == $0
end

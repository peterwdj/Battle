require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_hp = $player2.hitpoints
    erb :play
  end

  get '/attack' do
    @player2 = $player2.name
    $player2.reduce_hitpoints 10
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end

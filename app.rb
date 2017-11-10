require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = @game.player1
    @player2 = @game.player2
    @turn = @game.attacker
    erb :play
  end

  get '/attack' do
    @defender = @game.defender
    @game.attack
    @game.finish? ? redirect('/gameover') : erb(:attack)
  end

  get '/gameover' do
    @winner = @game.attacker.name
    @loser = @game.defender.name
    erb :gameover
  end

  run! if app_file == $PROGRAM_NAME
end

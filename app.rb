require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hp = $game.player_1.hp
    @player_2_hp = $game.player_2.hp
    erb :play
  end

  get '/first_attack' do
    @attacking_player = $game.on_turn_player
    @defending_player = $game.off_turn_player
    $game.attack($game.off_turn_player)
    @on_turn_player = $game.on_turn_player
    @off_turn_player = $game.off_turn_player
    erb :first_attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

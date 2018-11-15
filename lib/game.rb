class Game
  attr_reader :player_1
  attr_reader :player_2
  attr_reader :off_turn_player
  attr_reader :on_turn_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @on_turn_player = player_1
    @off_turn_player = player_2
  end

  def attack(player)
    player.reduce_health(10)
    switch_player
  end

  def switch_player
    @on_turn_player, @off_turn_player = @off_turn_player, @on_turn_player
  end
end

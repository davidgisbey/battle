class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def attack(player)
    player.reduce_health(10)
  end

  def reduce_health(amount)
    @hp -= amount
  end
end

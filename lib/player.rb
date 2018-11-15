class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def reduce_health(amount)
    @hp -= amount
  end
end

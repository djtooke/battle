class Player

  attr_reader :name, :hp
  DEFAULT_HP = 100
  DEFAULT_DAMAGE = 10

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage(damage = DEFAULT_DAMAGE)
    @hp -= damage
  end

end

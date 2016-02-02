class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @hp = 100
  end
def attack
@hp -= 5
end

end

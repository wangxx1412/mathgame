class Player
  attr_accessor :player_life, :name

  def initialize(name)
    @name = name
    @player_life = 3
  end

  def change_life(score)
    if score == false
      @player_life =  @player_life - 1
    end
  end
end
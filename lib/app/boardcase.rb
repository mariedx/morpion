class BoardCase
  attr_accessor :position, :state

  def initialize(position, state)
    @position = position
    @state = state
  end
end
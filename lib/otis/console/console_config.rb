class ConsoleConfig
  attr_reader :elevator
  def initialize(elevator: )
    @elevator = elevator
  end

  def hx_size_limit
    10
  end

  private
  def build_console_states(console)
    BottomFloor.new(holder: console)
    TopFloor.new(holder: console)
    OtherFloor.new(holder: console)
  end
end

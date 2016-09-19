class ConsoleConfig
  attr_reader :elevator
  def initialize(elevator: )
    @elevator = elevator
  end

  def build_console_states(console)
    BottomFloor.new(holder: console)
    TopFloor.new(holder: console)
    OtherFloor.new(holder: console)
  end
end

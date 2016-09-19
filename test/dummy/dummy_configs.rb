class DummyConsoleConfig
  attr_reader :elevator
  def initialize(elevator: )
    @elevator = elevator
  end

  def build_console_states(console)
  end
end


class DummyPositionerConfig
  attr_reader :elevator
  def initialize(elevator: )
    @elevator = elevator
  end

  def build_positioner_states(positioner)
  end
end

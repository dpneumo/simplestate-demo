class PositionerConfig
  attr_reader :elevator
  def initialize(elevator: )
    @elevator = elevator
  end

  def build_positioner_states(positioner)
    At1.new(holder: positioner)
    At2.new(holder: positioner)
    At3.new(holder: positioner)
    At4.new(holder: positioner)
    GoingTo1.new(holder: positioner)
    GoingTo2.new(holder: positioner)
    GoingTo3.new(holder: positioner)
    GoingTo4.new(holder: positioner)
  end
end

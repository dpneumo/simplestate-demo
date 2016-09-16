class Elevator
  attr_reader :console, :positioner
  def initialize( console:    Console.new(    opts: {elevator: self} ),
                  positioner: Positioner.new( opts: {elevator: self} ),
                  opts:       {} )
    @console    = console
    @positioner = positioner
    define_elevator
  end

  def button_push(event)
    positioner.send event
  end

  private
  def arrival(event)
    console.send event
  end

  def define_elevator
    # Console
    BottomFloor.new(holder: console)
    TopFloor.new(holder: console)
    OtherFloor.new(holder: console)
    console.start(:BottomFloor)
    # Positioner
    At1.new(holder: positioner)
    At2.new(holder: positioner)
    At3.new(holder: positioner)
    At4.new(holder: positioner)
    GoingTo1.new(holder: positioner)
    GoingTo2.new(holder: positioner)
    GoingTo3.new(holder: positioner)
    GoingTo4.new(holder: positioner)
    positioner.start(:At1)
  end
end
